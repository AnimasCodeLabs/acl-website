class MessagesController < ApplicationController
  respond_to :json

  def create
    respond_with Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
