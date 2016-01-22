class Api::V1::QuotesController < ApplicationController
  def index
    if current_user 
      @quotes = current_user.quotes
    else 
      @quotes = []
    end
    
    @other_peoples_quotes = []
    Quote.all.each do |quote|
      if quote.user != current_user
        @other_peoples_quotes << quote
      end 
    end 
  end

end