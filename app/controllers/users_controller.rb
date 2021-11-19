class UsersController < ApplicationController
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )

    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: 400
    end
  end
end
