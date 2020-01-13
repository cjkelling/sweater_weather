class Api::V1::AntipodeController < ApplicationController
  def index
    antipode_lat_long = Antipode.new(params[:location]).get_antipode
    weather = Forecast.new(0, antipode_lat_long).get_antipode_forecast
  end
end
