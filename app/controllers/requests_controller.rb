class RequestsController < ApplicationController
  def search
    @requests = Request.search(conditions: {activity_id: params[:search][:activity_id], town_country: params[:search][:town_country], country: params[:search][:country]})
  end
  
  def get_requests_json
    @requests = Request.all
    
    render json: {requests: @requests}
  end
end