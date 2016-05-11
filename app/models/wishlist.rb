class Wishlist < ActiveRecord::Base
  has_many :user_wishlists, dependent: :destroy
  has_many :product_wishlists
end
