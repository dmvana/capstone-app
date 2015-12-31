class ProfilesController < ApplicationController
  def index
  end

  def show
    @profile = Profile.find_by(id: params[:id])
  end
end
