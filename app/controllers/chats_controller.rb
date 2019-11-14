class ChatsController < ApplicationController

  def index
    chats = Chat.all
    render json: ChatSerializer.new(chats)
  end

  def create
    chat = Chat.create(chat_params)
    render json: chat
  end

  private

  def chat_params
    params.require(:chat).permit(:message, :player_id)
  end

end
