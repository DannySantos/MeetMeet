require 'rails_helper'

RSpec.describe Request, type: :model do
  let(:request) do
    request = Request.create!({
      profile_id: 1,
      activity_id: 1,
      town_city: "London",
      country: "UK"
    })
  end
  
  describe "geocoding" do
    it "provides a string for geocoder input" do
      expect(request.geocoder_input).to eq("London, UK")
    end
    
    it "automatically geocodes the model on save" do
      expect(request.latitude).to eq(51.5073509)
      expect(request.longitude).to eq(-0.1277583)
    end
  end
end