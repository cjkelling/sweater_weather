class Api::V1::BackgroundsController < ApplicationController
  def index
    render json: Background.new(params[:location]).get_background
  end
end
