class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      prompt_id: params["prompt_id"],
    )
    if favorite.save
      render json: favorite
    else
      render json: { errors: favorite.errors.full_messages }, status: 422
    end
  end

  def destroy
    favorite_id = params["id"]
    favorite = Favorite.find_by(id: favorite_id)

    favorite.destroy
    render json: { message: "This favorite has been destroyed" }
  end
end
