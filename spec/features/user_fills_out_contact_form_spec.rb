require 'spec_helper'

feature 'contact form' do
  scenario 'user fills out contact form' do
    visit contact_path

    fill_in 'Name', with:  'John Doe'
    fill_in 'Email', with: 'jdoe@example.com'
    fill_in 'Message', with: 'Hello World'

    click_button 'Send'

    expect(page).to have_content("Thanks")
  end
end
