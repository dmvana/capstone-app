class QuotesController < ApplicationController
  def index
    if current_user 
      @quotes = current_user.quotes
    else 
      @quotes = []
    end
    # @quotes_with_avatar = []
    # @quotes.each do |quote|
    #   picture = Faker::Avatar.image
    #   @quotes_with_avatar << {
    #     quote: quote,
    #     picture: picture
    #   }
    # end
    @other_peoples_quotes = []
    Quote.all.each do |quote|
      if quote.user != current_user
        @other_peoples_quotes << quote
      end
    end
    # @favorite_quotes = FavoriteQuote.where user_id: current_user.id 
    @favorite_quotes = []
  end

  def show
    @quote = Quote.find_by(id: params[:id])
  end
  
  def new
    @quote = Quote.new
  end

  def create
    date_numbers = params[:date].split('/')
    day = date_numbers[1].to_i
    month = date_numbers[0].to_i
    year = date_numbers[2].to_i
    my_date = DateTime.new(year, month, day)
    quote = Quote.create(
      description: params[:description],
      location: params[:location],
      date: my_date,
      user_id: current_user.id 
    )
    flash[:success] = "Quote was succesfully created!"
    redirect_to '/quotes'
  end

  def edit
    @quote = Quote.find_by(id: params[:id])
  end

  def update
    date_numbers = params[:date].split ('/')
    day = date_numbers[1].to_i
    month = date_numbers[0].to_i
    year = date_numbers[2].to_i
    my_date = DateTime.new(year, month, day)
    quote = Quote.find_by(id: params[:id])
    quote.update(
      description: params[:description],
      location: params[:location],
      date: my_date,
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
