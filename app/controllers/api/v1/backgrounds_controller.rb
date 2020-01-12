class Api::V1::BackgroundsController < ApplicationController
  def index
    Backgrounds.new(params[:location]).get_background
  end
end
