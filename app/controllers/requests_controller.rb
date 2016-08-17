class RequestsController < ApplicationController
  def search
    @requests = Request.search(conditions: {activity_id: params[:search][:activity_id], town_country: params[:search][:town_country], country: params[:search][:country]})
  end
end