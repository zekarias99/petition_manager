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

  scenario "can not create a petition without an exception" do
    click_button 'Create Petition'
    page.should have_content("Petition has not been created.")
    # page.should have_content("Exception can't be blank")
  end

end
