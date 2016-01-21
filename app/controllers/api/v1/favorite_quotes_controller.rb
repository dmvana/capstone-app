class Api::V1::FavoriteQuotesController < ApplicationController

  def index
    @favorite_quotes = FavoriteQuote.all
  end

  def show
    @favorite_quote = FavoriteQuote.find_by(id: params[:id])
  end

  def create
    @favorite_quotes = FavoriteQuote.create(
    description: params[:description],
    location: params[:location],
    date: params[:date]
    )
    render :show
  end

end
