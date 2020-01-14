class Api::V1::RoadTripController < ApplicationController
  def create
    if params[:api_key] && User.includes(:api_key).where('api_key = ?', params[:api_key])
      render json: RoadTripSerializer.new(RoadTripFacade.new(params[:origin], params[:destination]))
    else
      render json: { msg: 'Unauthorized' }, status: 401
    end
  end
end
