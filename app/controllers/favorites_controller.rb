class FavoritesController < ApplicationController
  # before_action :authenticate_user

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: current_user.id.to_i,
      prompt_id: params["prompt_id"],
    )
    if favorite.save
      render json: favorite
    else
      render json: { errors: favorite.errors.full_messages }, status: 422
    end
  end

  def destroy
    favorite = Favorite.find_by(id: params["id"])

    favorite.destroy
    render json: { message: "This favorite has been destroyed" }
  end
end
