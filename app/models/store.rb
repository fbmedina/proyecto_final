class Store < ActiveRecord::Base
  include LikeHelper
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user
  has_many :station_stores, dependent: :destroy
  has_many :stations, through: :station_stores

  validates :user_id, uniqueness: true
  validates :user_id, presence: true
  validates :name, :phone_number, :station_ids, presence: true

  attr_writer :current_step

  mount_uploader :photo, PhotoUploader
  mount_uploader :cover_photo, CoverPhotoUploader

  def to_s
    self.name
  end
end
