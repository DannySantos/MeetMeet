class Request < ActiveRecord::Base
  belongs_to :profile
  belongs_to :activity
  
  geocoded_by :geocoder_input
  after_validation :geocode
  
  def geocoder_input
    "#{self.town_city}, #{self.country}"
  end
end
