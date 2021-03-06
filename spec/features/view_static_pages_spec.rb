require 'rails_helper'

feature 'View static pages' do
  scenario 'user views homepage' do
    visit root_path
    expect(page).to have_title "Animas Code Labs"
  end

  scenario 'user views contact page' do
    visit contact_path
    expect(page).to have_title "Contact"
  end
end
