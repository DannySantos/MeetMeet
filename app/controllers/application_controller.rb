class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def index
    @activities = Activity.all.map{ |activity| [activity.name.downcase, activity.id] }
  end
end
