class MessageMailer < ActionMailer::Base
  default from: "website@animascodelabs.com", to: "sales@animascodelabs.com"

  def new_message(message_id)
    @message = Message.find(message_id)

    mail subject: "New message from #{@message.name}", reply_to: @message.email
  end
end
