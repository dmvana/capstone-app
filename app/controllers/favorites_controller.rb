class FavoritesController < ApplicationController
  def index
    @favorite_quotes = current_user.my_favorite_quotes
  end
end

