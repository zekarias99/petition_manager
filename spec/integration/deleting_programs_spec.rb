require 'spec_helper'

feature "Deleting programs" do
	scenario "Deleting a program" do 
		Factory(:program, :title => "Business Management")
		visit '/programs'
		click_link "Business Management"
		click_link "Delete Program"
		page.should have_content("Program has been deleted.")

		visit '/programs'
		page.should_not have_content("Business Management")
	end
end