class ProfilesController < ApplicationController

  def index
    @profile = Profile.find_by(user_id: current_user.id)
  end
end
