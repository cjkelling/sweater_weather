class Api::V1::AntipodeController < ApplicationController
  def index
    antipode_lat_long = Antipode.new(params[:location]).get_antipode
    antipode_weather_data = Forecast.new(0, antipode_lat_long).get_antipode_forecast
    render json: AntipodeSerializer.new(AntipodeFacade.new(antipode_weather_data, params[:location]))
  end
end
