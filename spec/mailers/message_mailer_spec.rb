require 'spec_helper'

describe MessageMailer, "#new_message" do
  let(:message){create :message}
  let(:email){described_class.new_message(message.id)}

  it "sends to sales@animascodelabs.com" do
    expect(email).to deliver_to("sales@animascodelabs.com")
  end

  it "renders the message body" do
    expect(email).to have_body_text(message.body)
  end

  it "sets the reply to message.email" do
    expect(email).to have_reply_to(message.email)
  end
end
