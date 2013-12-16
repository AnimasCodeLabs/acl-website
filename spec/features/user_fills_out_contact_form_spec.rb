require 'spec_helper'

feature 'contact form' do
  scenario 'user fills out contact form', js: true do
    visit contact_path

    fill_out_contact_form

    user_sees_thank_you_message

    sales_gets_email
  end

  def fill_out_contact_form
    fill_in 'message_name', with:  'John Doe'
    fill_in 'message_email', with: 'jdoe@example.com'
    fill_in 'message_phone', with: '970-403-5085'
    fill_in 'message_body', with: 'Hello World'

    click_button 'GET STARTED'
  end

  def user_sees_thank_you_message
    expect(page).to have_content("Thank you")
  end

  def sales_gets_email
    expect(last_email).to deliver_to("sales@animascodelabs.com")
  end
end
