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
    quote. Quote.create(
      description: params[:description],
      date: params[:date],
      user_id: current_user.id 
    )
    flash[:success] = "Quote was succesfully created!"
    redirect_to '/quotes'
  end

  def edit
    @quote = Quote.find_by(id: params[:id])
  end

  def update
    quote = Quote.find_by(id: params[:id])
    quote.update(
      description: params[:description],
      date: params[:date],
      user_id: current_user.id
    )
    flash[:success] = "Quote was succesfully updated!"
    redirect_to "/quotes/#{quote.id}"
  end

  def destroy
    quote = Quote.find_by(id: params[:id])
    quote.destroy
    flash[:warning] = "Quote destroyed!"
    redirect_to '/quotes'
  end

end
