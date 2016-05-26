class SearchesController < ApplicationController
  def index
    distance = params[:distance].present? ? params[:distance] : 2
    current_user.latitude = params[:latitude]
    current_user.longitude = params[:longitude]
    current_user.save

    @products = Product.all

    if params[:distance]
      station_ids = Station.near([current_user.latitude, current_user.longitude], distance, :units => :km).collect(&:id)
      @products = Product.eager_load(:store => [:station_stores]).where("station_stores.station_id" => station_ids)
    end

    if params[:q].present?
      q = params[:q]
      @products = @products.where("LOWER(products.name) LIKE ? OR LOWER(products.description) LIKE ?", "%#{q.downcase}%", "%#{q.downcase}%")
      # @products = @products.tagged_with(q, any: true)
    end

    if params[:first_price].present? && params[:second_price].present?
      first_price = params[:first_price]
      second_price = params[:second_price]
      @products = @products.where("(products.price) BETWEEN #{first_price} AND #{second_price}")
    end

  end

  def show
    index
    render :index
  end
end

