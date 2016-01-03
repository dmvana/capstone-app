class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    user = user.create(
      quote: params[:quote],
      name: params[:name],
      )
    flash[:success] = "Quote was successfully created!"
    redirect_to '/profiles'
  
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end

end
