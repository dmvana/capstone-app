class QuotesController < ApplicationController
  def index
  # 
  @quotes = current_user.quotes
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
