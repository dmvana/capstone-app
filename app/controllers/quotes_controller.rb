class QuotesController < ApplicationController
  def index
    if current_user 
      @quotes = current_user.quotes
    else 
      @quotes = []
    end
  end

  def show
    @quote = Quote.find_by(id: params[:id])
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
    redirect_to '/quotes'
  end

  def edit
    @quote = Quote.find_by(:id params[:id])
  end

  def update
  end

  def destroy
  end

end
