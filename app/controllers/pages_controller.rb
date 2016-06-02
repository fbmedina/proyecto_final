class PagesController < ApplicationController
  def index
    @products = Product.where(best_seller: true)
    @stores = Store.where(recommended: true)
  end
end
