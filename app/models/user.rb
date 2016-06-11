class User < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader

  has_one :store, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :user_wishlists, dependent: :destroy
  has_many :wishlists, through: :user_wishlists, dependent: :destroy
  has_many :products, through: :user_wishlists

  after_create :create_wishlists
  before_save :default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  enum role: [ :other, :logged ]

  after_validation :reverse_geocode, if: ->(obj){ obj.latitude.present? and obj.latitude_changed? || obj.longitude.present? and obj.longitude_changed?}
  reverse_geocoded_by :latitude, :longitude

  def self.find_for_facebook_oauth(auth)
    user_found = where(provider: auth.provider, uid: auth.uid).first

    if user_found.nil?
      user = new
      user.provider = auth.provider, 
      user.uid = auth.uid,
      user.name = auth.info.name,  
      user.email = auth.info.email,
      user.remote_avatar_url = auth.info.image,
      user.gender = auth.extra.raw_info.gender,
      user.birthday = auth.extra.raw_info.birthday,
      user.password = Devise.friendly_token[0,20]
      user.save
    end

    user_found || user
  end

  def to_s
    name
  end

  private

    def create_wishlists
      Wishlist.find_each do |w|
        w.user_wishlists.create(user: self)
      end
    end

    def default_role
      self.role ||= 1
    end
end
