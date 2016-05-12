class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show
    @user = User.find(params[:user_id])
  end

  def add_to_wishlist
    @product = Product.find(params[:product_id])
    # wishlist.add_product(params[:product_id])
    redirect_to @product
  end

  # GET /wishlists/1/edit
  def edit
    @user = User.find(params[:user_id])
  end

  # POST /wishlists
  # POST /wishlists.json
  def create
    @user = User.find(params[:user_id])

    @user.wishlists.build(wishlist_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Wishlist was successfully created.' }
        format.json { render :show, status: :created, location: @wishlist }
      else
        format.html { render :new }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlists/1
  # PATCH/PUT /wishlists/1.json
  def update
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to @user, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
  def destroy
    @user = User.find(params[:user_id])
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'Wishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = Wishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_params
      params.require(:wishlist).permit(:name, :icon)
    end
end
