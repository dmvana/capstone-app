class Api::V1::FavoriteQuotesController < ApplicationController

  def index
    @favorite_quotes = FavoriteQuote.all
  end

  def show
    @favorite_quote = FavoriteQuote.find_by(id: params[:id])
  end

  def create
    @favorite_quote = FavoriteQuote.create(
      user_id: params[:user_id],
      quote_id: params[:quote_id]
    )
    render :index
  end

end
