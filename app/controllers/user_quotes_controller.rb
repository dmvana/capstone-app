class UserQuotesController < ApplicationController

  def create   
    favorite_quote = FavoriteQuote.create(
      user_id: params[:user_id],
      quote_id: params[:quote_id]
    )
    redirect_to '/quotes'
  end
end
