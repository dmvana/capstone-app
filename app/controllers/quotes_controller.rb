class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    @quote. Quote.create(
      description: params[:description],
      date: params[:date]
      )
  end

end
