require 'spec_helper'

feature 'Creating Petitions' do
  before do
    visit '/petitions'
    click_link 'Create Petition'
  end

  scenario "can create a petition" do
    select("waiver", :from => :exception)
    click_button 'Create Petition'
    page.should have_content('Petition has been created.')
  end

end
