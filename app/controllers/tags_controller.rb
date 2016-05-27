class TagsController < ApplicationController
  load_and_authorize_resource :product
  load_and_authorize_resource :tag, through: :product

  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @products = Product.tagged_with(@tag.name)
  end
end