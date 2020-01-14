class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: { msg: "api_key: #{user.api_key}" }, status: 200
    else
      render json: { msg: 'Your credentials are bad' }, status: 400
    end
  end
end
