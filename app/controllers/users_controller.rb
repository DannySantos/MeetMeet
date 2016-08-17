class UsersController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    @requests = @profile.requests
  end
end