class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    token = SecureRandom.hex(32)
    user.api_key = token
    if user.save
      render json: { msg: "api_key: #{token}" }, status: 201
    else
      render json: { msg: user.errors.full_messages.to_sentence }, status: 400
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
