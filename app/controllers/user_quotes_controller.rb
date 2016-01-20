class UserQuotesController < ApplicationController

  def create   
    favorite_quote = Favorite_quote.create(
      user_id: params[:user_id]
      quote_id: params[:quote_id]
    )
  end
end
