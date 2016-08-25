class MessagesController < ApplicationController
  def index
    @messages = current_user.received_messages.order(created_at: :desc)
    @threads = get_unique_senders(@messages)

    params[:sender_id] = @threads.first.sender_id unless params[:sender_id]
    
    @message = Message.new
    
    @thread_messages = Message.where("(receiver_id = ? OR sender_id = ?) AND (receiver_id = ? OR sender_id = ?)", params[:sender_id], params[:sender_id], current_user.id, current_user.id)

    respond_to do |format|
      format.json { render json: @thread_messages }
      format.html
    end
  end
  
  def new
    @message = Message.new
    @receiver = User.find(params[:receiver_id])
  end
  
  def create
    @message = Message.create!(message_params)
    
    respond_to do |format|
      format.html { redirect_to profile_path(params[:message][:receiver_id], sent: "true") }
      format.js #{ render partial: 'messages/message', locals: { message: @message } }
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:receiver_id, :sender_id, :body)
  end
  
  def get_unique_senders(messages)
    uniques = []
    sender_ids = []
    
    messages.each do |message|
      unless sender_ids.include? message.sender_id
        uniques << message
      end
      
      sender_ids << message.sender_id
    end
    
    uniques
  end
end