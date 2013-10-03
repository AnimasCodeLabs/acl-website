class MailPreview < MailView

  def new_message
    msg = FactoryGirl.create(:message)
    mail = MessageMailer.new_message msg.id
    msg.destroy
    mail
  end

end
