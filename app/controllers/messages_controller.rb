class MessagesController < ApplicationController
  def create
  	message = current_user.messages.build message_params  	
    if message.save
      ActionCable.server.broadcast "messages_#{message.chat_room_id}_channel",
        message: message.content,
        user: current_user.email
      head :ok
    else 
      redirect_to chatrooms_path
    end
  end

  private
    def message_params
      params.require(:message).permit(:content, :chat_room_id)
    end
end
