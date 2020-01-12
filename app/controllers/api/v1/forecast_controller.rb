class Api::V1::ForecastController < ApplicationController
  def index
    weather_data = Forecast.new(params[:location]).get_weather_forecast
    render json: ForecastSerializer.new(ForecastFacade.new(weather_data))
  end
end
