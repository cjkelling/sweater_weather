class Api::V1::RoadTripController < ApplicationController
  def create
    if params[:api_key] && User.includes(:api_key).where('api_key = ?', params[:api_key])
      travel_time = RoadTrip.new(params[:origin], params[:destination]).get_time
      arrival_forecast = Forecast.new(params[:destination]).get_weather_forecast
      render json: RoadTripSerializer.new(RoadTripFacade.new(params[:origin], params[:destination], travel_time, arrival_forecast))
    else
      render json: { msg: 'Unauthorized' }, status: 401
    end
  end
end
