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
    @review = Review.new
    @rating_options = [[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]
    @reviews = @profile.user.reviews
#    @reviews = Review.search(conditions: {reviewed_id: @profile.id})
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:username, :town_city, :country, :image_url, :user_id, :biography)
  end
end