class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id,
          ex: 24.hours.from.now.to_i,
        },
        Rails.application.credentials.fetch(:secret_key_base),
        "HS256"
      )
      render json: { user_id: user.id, username: user.username, jwt: jwt }, status: 201
    else
      render json: {}, status: 401
    end
  end
end
