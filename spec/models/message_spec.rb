require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "retrieving history" do
    before do
      @message_7 = Message.find_or_create_by(
        sender_id: 1,  
        receiver_id: 2,  
        body: "FYI I just sent one of my drones to your house",
        replied_to_id: nil
      )

      @message_8 = Message.find_or_create_by(
        sender_id: 2,  
        receiver_id: 1,  
        body: "...one of the good ones or one of the weaponised ones?",
        replied_to_id: @message_7.id
      )

      @message_9 = Message.find_or_create_by(
        sender_id: 1,  
        receiver_id: 2,  
        body: "The good ones",
        replied_to_id: @message_8.id
      )

      @message_10 = Message.find_or_create_by(
        sender_id: 1,  
        receiver_id: 2,  
        body: "...but it was also weaponized",
        replied_to_id: @message_9.id
      )

      @message_11 = Message.find_or_create_by(
        sender_id: 1,  
        receiver_id: 2,  
        body: "I don't THINK it will attack though",
        replied_to_id: @message_10.id
      )
      
      @message_12 = Message.find_or_create_by(
        sender_id: 3,  
        receiver_id: 2,  
        body: "Do you want to go line dancing?",
        replied_to_id: nil
      )

      @message_13 = Message.find_or_create_by(
        sender_id: 2,  
        receiver_id: 3,  
        body: "Not really my cup of tea mate, but thanks",
        replied_to_id: @message_12.id
      )
    end
    
    it "should return the full message history" do
      message_history = @message_10.history
      expect(message_history.count).to eq(4)
    end
  end
end
