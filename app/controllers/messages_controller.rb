class MessagesController < ApplicationController
  respond_to :json

  def create
    message = Message.create(message_params)
    if message.persisted?
      MessageMailer.new_message(message).deliver
    end

    respond_with message
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :body, :phone)
  end
end
