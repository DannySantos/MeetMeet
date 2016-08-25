class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User", foreign_key: :sender_id
  belongs_to :receiver, class_name: "User", foreign_key: :receiver_id
  
  def history
    message_history = []
    message = self
    message_history << message
    
    loop do
      break if message.replied_to_id.nil?
      message = Message.find(message.replied_to_id)
      message_history << message
    end
    
    message_history
  end
end
