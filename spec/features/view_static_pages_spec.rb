require 'spec_helper'

feature 'View static pages' do
  scenario 'user views homepage' do
    visit root_path
    expect(page).to have_title "Animas Code Labs"
  end
end
