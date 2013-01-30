require 'spec_helper'

feature "Viewing programs" do 
	scenario "Listing all programs" do
		program = Factory.create(:program, :title => "Business Management") 
		visit '/programs' 
		click_link "#{program.title}" 
		page.current_url.should == program_url(program)
	end 
end