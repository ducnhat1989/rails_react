class ChatRoomsController < ApplicationController
  def show
    @chatroom = ChatRoom.find params[:id]
    @message = Message.new
  end

  def index
  	@chatrooms = ChatRoom.all
  end

  def new
  	@chatroom = ChatRoom.new
  end

  def create
  end
end
