class Products::CommentsController < CommentsController
  before_action :set_commentable

  load_and_authorize_resource :product
  load_and_authorize_resource :comment, through: :product

  private

    def set_commentable
      @store = Store.find(params[:store_id])
      @commentable = Product.find(params[:product_id])
    end
end