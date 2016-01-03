class QuotesController < ApplicationController
  def index
  @quote = Quote.all
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
