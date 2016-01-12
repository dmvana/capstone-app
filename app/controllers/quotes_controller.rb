class QuotesController < ApplicationController
  def index
    if current_user 
      @quotes = current_user.quotes
    else 
      @quotes = []
    end
  end


  def new
    @quote = Quote.new
  end

  def create
    @quote. Quote.create(
      description: params[:description],
      date: params[:date],
      user_id: current_user.id 
      
      )
  end

end
