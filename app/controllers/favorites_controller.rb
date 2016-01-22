class FavoritesController < ApplicationController
  def index
    @favorite_quotes = current_user.my_favorite_quotes
  end

  def create
    @favorite_quotes = FavoriteQuote.create(
      description: params[:description],
      email: params[:email],
      user_id: current_user.id,
      quote_id: params[:quote_id]
      )
  end
end

