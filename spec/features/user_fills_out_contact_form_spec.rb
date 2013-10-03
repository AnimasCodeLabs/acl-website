require 'spec_helper'

feature 'contact form' do
  scenario 'user fills out contact form', js: true do
    visit contact_path

    fill_in 'message_name', with:  'John Doe'
    fill_in 'message_email', with: 'jdoe@example.com'
    fill_in 'message_body', with: 'Hello World'

    click_button 'GET STARTED'

    expect(page).to have_content("Thank you")
  end
end
