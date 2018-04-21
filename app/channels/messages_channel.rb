class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_#{params['chat_room_id']}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
