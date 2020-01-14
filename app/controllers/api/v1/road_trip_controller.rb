class Api::V1::RoadTripController < ApplicationController
  def create
    if params[:api_key] && User.includes(:api_key).where('api_key = ?', params[:api_key])
      travel_time = RoadTrip.new(params[:origin], params[:destination]).get_time
      render json: RoadTripSerializer.new(RoadTripFacade.new(params[:origin], params[:destination], travel_time))
    else
      render json: { msg: 'Unauthorized' }, status: 401
    end
  end
end
