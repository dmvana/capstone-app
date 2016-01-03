class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
  
  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.create(
      quote: params[:quote],
      name: params[:name],
      )
    flash[:success] = "Quote was successfully created!"
    redirect_to '/profiles'
  
  end
  
  def show
    @profile = Profile.find_by(id: params[:id])
  end
end
