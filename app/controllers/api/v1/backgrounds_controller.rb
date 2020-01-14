class Api::V1::BackgroundsController < ApplicationController
  def index
    lat_long = Geocoding.new(params[:location]).latitude_longitude
    render json: Background.new(lat_long).get_background
  end
end
