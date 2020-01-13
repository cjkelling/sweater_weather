class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      token = SecureRandom.hex(32)
      user.api_key = token
      render json: { status: 201, msg: "api_key: #{token}" }
    else
      render json: { status: 400, msg: user.errors.full_messages.to_sentence }
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
