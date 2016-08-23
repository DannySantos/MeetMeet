class MessagesController < ApplicationController
  def new
    @message = Message.new
    @receiver = User.find(params[:receiver_id])
  end
  
  def create
    Message.create!(message_params)
    redirect_to profile_path(params[:message][:receiver_id], sent: "true")
  end
  
  private
  
  def message_params
    params.require(:message).permit(:receiver_id, :sender_id, :body)
  end
end