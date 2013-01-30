require 'spec_helper'

feature 'Creating Programs' do 
	before do
		visit '/programs' 
		click_link 'New Program'
	end
	
	scenario "can create a program" do
		fill_in 'Title', :with => 'Business Management' 
		fill_in 'Owner', :with => "Professor Bob" 
		click_button 'Create Program' 
		page.should have_content('Program has been created.')
		program = Program.find_by_title("Business Management") 
		page.current_url.should == program_url(program) 
		title = "Business Management - Program - Petition Manager" 
		find("title").should have_content(title)
	end

	scenario "can not create a program without a title" do 
		fill_in 'Owner', :with => "Professor Bob" 
		click_button 'Create Program'
		page.should have_content("Program has not been created.")
		page.should have_content("Title can't be blank") 
	end

	scenario "can not create a program without an owner" do 
		fill_in 'Title', :with => 'Business Management' 
		click_button 'Create Program'
		page.should have_content("Program has not been created.")
		page.should have_content("Owner can't be blank") 
	end
end