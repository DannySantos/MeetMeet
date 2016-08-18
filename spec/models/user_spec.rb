require 'rails_helper'

RSpec.describe User, type: :model do
  describe "account creation" do
    before do
      @user = User.create! (
        {
          email: "email@email.com",
          password: "password",
          password_confirmation: "password"
        }
      )
    end
    
    it "should assign a profile after account creation" do
      expect(@user.profile).to eq(Profile.last)
    end
  end
end
