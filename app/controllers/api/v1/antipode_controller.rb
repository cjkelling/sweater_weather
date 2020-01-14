class Api::V1::AntipodeController < ApplicationController
  def index
    antipode_lat_long = Antipode.new(params[:location]).get_antipode
    antipode_city = Geocoding.new(0, antipode_lat_long).reverse_lookup
    render json: AntipodeSerializer.new(AntipodeFacade.new(params[:location], antipode_city))
  end
end
