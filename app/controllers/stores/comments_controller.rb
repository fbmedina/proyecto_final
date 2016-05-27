class Stores::CommentsController < CommentsController
  before_action :set_commentable

  load_and_authorize_resource :store
  load_and_authorize_resource :comment, through: :store

  private

    def set_commentable
      @commentable = Store.find(params[:store_id])
    end
end