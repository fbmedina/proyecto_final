class Product < ActiveRecord::Base
  include LikeHelper
  belongs_to :store
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user
  has_many :product_tags
  has_many :tags, through: :product_tags

  def to_s
    self.name
  end
end
