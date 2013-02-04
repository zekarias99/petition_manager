require 'spec_helper'

feature "Viewing petitions" do

  scenario "Listing all open petitions" do
    pending
    project = FactoryGirl.create(:petition, :exception => 'waiver')
    visit '/petitions'
    page.should have_content("1")
    page.current_url.should == petition_url(petition)
  end

end
