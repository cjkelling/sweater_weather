class Api::V1::AntipodeController < ApplicationController
  def index
    weather_data = Forecast.new(params[:location]).get_weather_forecast_antipode
  end
end
