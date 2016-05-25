class SearchesController < ApplicationController
  def index
    distance = params[:distance].present? ? params[:distance] : 2
    current_user.latitude = params[:latitude]
    current_user.longitude = params[:longitude]
    current_user.save
    station_ids = Station.near([current_user.latitude, current_user.longitude], distance, :units => :km).collect(&:id)
    @products = Product.eager_load(:store => [:station_stores]).where("station_stores.station_id" => station_ids)
  end

  def show
    index
    render :index
  end
end

