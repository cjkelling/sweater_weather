class Api::V1::AntipodeController < ApplicationController
  def index
    antipode_lat_long = Antipode.new(params[:location]).get_antipode
  end
end
