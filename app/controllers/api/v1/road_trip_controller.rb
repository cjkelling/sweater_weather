class Api::V1::RoadTripController < ApplicationController
  def create
    if User.includes(:api_key).where('api_key = ?', params[:api_key])
      render json: RoadTrip.new(params[:origin, :destination])
    end
  end
end
