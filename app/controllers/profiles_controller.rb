
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
    @rating_options = [["0 Stars",0],["1 Star",1],["2 Stars",2],["3 Stars",3],["4 Stars",4],["5 Stars",5]].reverse
    @reviews = @profile.user.reviews if @profile.user
    binding.pry
    @sent = true if params[:sent] == "true"
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:username, :town_city, :country, :image_url, :cover_image_url, :user_id, :biography)
  end
end