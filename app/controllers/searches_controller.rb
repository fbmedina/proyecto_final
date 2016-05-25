class SearchesController < ApplicationController
  def index
    distance = params[:distance].present? ? params[:distance] : 2
    current_user.latitude = params[:latitude]
    current_user.longitude = params[:longitude]
    current_user.save
    stations = Station.near([current_user.latitude, current_user.longitude], distance, :units => :km)
    @products = []  
    stations.each do |station|
      station.products.each do |p|
        @products << p
      end
    end
  end

  def show
    index
    render :index
  end
end

