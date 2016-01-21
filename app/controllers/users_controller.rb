class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    user = user.create(
      email: params[:email],
      )
    flash[:success] = "Quote was successfully created!"
    redirect_to '/profiles'
  
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end

  def delete
    @user = User.find_by(id: params[:id])
    @user.update(active: false)
    redirect_to "/users/sign_in"
  end

end
