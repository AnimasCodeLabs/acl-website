require 'spec_helper'

feature 'contact form' do
<<<<<<< HEAD
  scenario 'user fills out contact form', js: true do
    visit contact_path

    fill_in 'message_name', with:  'John Doe'
    fill_in 'message_email', with: 'jdoe@example.com'
    fill_in 'message_body', with: 'Hello World'

    click_button 'GET STARTED'

    expect(page).to have_content("Thank you")
=======
  scenario 'user fills out contact form' do
    visit contact_path

    fill_in 'Name', with:  'John Doe'
    fill_in 'Email', with: 'jdoe@example.com'
    fill_in 'Message', with: 'Hello World'

    click_button 'Send'

    expect(page).to have_content("Thanks")
>>>>>>> 14a812f222fb2e1def69dad6bc919abe330b969e
  end
end
