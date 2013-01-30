require 'spec_helper'

feature "Editing Programs" do
	before do
		program = Factory(:program, :title => "Business Management")
		visit "/programs"
		click_link program.title
		click_link "Edit Program"
	end

	scenario "Updating a program" do	
		fill_in "Title", :with => ("Business Management 2")
		click_button "Update Program"
		page.should have_content("Program has been updated.")
	end

	scenario "Updating a program with invalid attributes is bad" do
		fill_in "Title", :with => ""
		click_button "Update Program"
		page.should have_content("Program has not been updated.")
	end
end