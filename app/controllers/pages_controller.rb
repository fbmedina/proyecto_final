class PagesController < ApplicationController
  def index
    @products = Product.where(best_seller: true)
  end
end
