class Product < ActiveRecord::Base
  include LikeHelper
  belongs_to :store
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user
  
  has_many :product_wishlists, dependent: :destroy
  has_many :user_wishlists, through: :product_wishlists
  has_many :wishlists, through: :product_wishlists

  validates :name,:photo, :price, presence: true

  acts_as_taggable

  mount_uploader :photo, PhotoUploader

  def to_s
    self.name
  end

  def search_next

  end

  def store_next
    self.store.products.where("id > ?", self.id).order(:id).limit(1).first
  end

  def store_previous
    self.store.products.where("id < ?", self.id).order("id DESC").limit(1).first
  end

  def has_next?
    (self.store.products.where("id > ?", self.id).count > 0) ? true : false
  end

  def has_previous?
    (self.store.products.where("id < ?", self.id).count > 0) ? true : false
  end
end
