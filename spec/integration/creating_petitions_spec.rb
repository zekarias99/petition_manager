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
  scenario "Creating a petition with attachment(s)" do 
  	#fill_in "Title", :with => "Add documentation for blink tag" 
  	select("Waiver", :from => :exception)
  	fill_in "Reason", :with => "I have crazy work experience; I don't need your class" 
  	attach_file "File #1", "spec/fixtures/resume.txt" 
  	attach_file "File #2", "spec/fixtures/transcript1.txt" 
  	attach_file "File #3", "spec/fixtures/transcript2.txt" 
  	click_button "Create Petition" 
  	page.should have_content("Ticket has been created.") 
  	within("#ticket .assets") do
      page.should have_content("resume.txt") 
      page.should have_content("transcript1.txt") 
      page.should have_content("transcript2.txt")
    end 
  end
end
