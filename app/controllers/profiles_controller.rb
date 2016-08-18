class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    Profile.find(params[:id]).update(profile_params)
    redirect_to profile_path(params[:id])
  end

  def show
    @profile = Profile.find(params[:id])
    @requests = @profile.requests
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:username, :town_city, :country, :image_url, :user_id)
  end
end