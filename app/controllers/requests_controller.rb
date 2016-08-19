class RequestsController < ApplicationController
  def search
    if params[:search][:town_city]
      @requests = Request.search(conditions: {activity_id: params[:search][:activity_id], town_country: params[:search][:town_country], country: params[:search][:country]})
      
      @activity = Activity.find(params[:search][:activity_id]).name.downcase
      @activity_id = params[:search][:activity_id]
      @town_city = params[:search][:town_city]
      @country = params[:search][:country]
      @map_lat_lng = Geocoder.coordinates("#{@town_city}, #{@country}")
      @map_lat = @map_lat_lng[0]
      @map_lng = @map_lat_lng[1]
    else
      ne_lat = params[:search][:northEastLat].to_f
      ne_lng = params[:search][:northEastLng].to_f
      map_center_lat = params[:search][:mapCenterLat].to_f
      map_center_lng = params[:search][:mapCenterLng].to_f

      distance = Geocoder::Calculations.distance_between([ne_lat,ne_lng], [map_center_lat,map_center_lng])
      
      @requests = Request.near([map_center_lat, map_center_lng], distance).where(activity_id: params[:search][:activity_id])
    end
    
    
    respond_to do |format|
      format.json do
        render json: @requests 
      end
      
      format.html
    end
  end
end