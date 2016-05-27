class SearchesController < ApplicationController
  
  def index
    distance = params[:distance].present? ? params[:distance] : 2
    first_price = params[:first_price].present? ? params[:first_price] : 0
    current_user.latitude = params[:latitude]
    current_user.longitude = params[:longitude]
    current_user.save

    @products = Product.all

    if params[:distance]
      station_ids = Station.near([current_user.latitude, current_user.longitude], distance, :units => :km).collect(&:id)
      @products = Product.eager_load(:store => [:station_stores]).where("station_stores.station_id" => station_ids)
    end

    if params[:key_word].present?
      key_word = params[:key_word]
      @products = @products.where("LOWER(products.name) LIKE ? OR LOWER(products.description) LIKE ?", "%#{key_word.downcase}%", "%#{key_word.downcase}%")
    end

    if params[:first_price] && params[:second_price].present?
      first_price = params[:first_price]
      second_price = params[:second_price]
      @products = @products.where("(products.price) BETWEEN #{first_price} AND #{second_price}")
    end

    if params[:tags].present?
      tags = params[:tags]
      @products = @products.tagged_with(tags, any: true)
    end
  end

  def show
    index
    render :index
  end
end

