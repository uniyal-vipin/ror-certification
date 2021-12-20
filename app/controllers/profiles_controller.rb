class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile
  def index
    @profile
  end

  def update
    if @profile.update!(profile_params)
      redirect_to user_profile_path
    end
  end

  def update_profile_form
  end

  private

  def set_profile
    @profile = Profile.find_by(user_id: current_user.id)
  end

  def profile_params
    params.permit(:first_name, :last_name, :age, :profile_image)
  end
end
