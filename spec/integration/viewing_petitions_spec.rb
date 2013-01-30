require 'spec_helper'

feature "Viewing petitions" do

  scenario "Listing all open petitions" do
    project = FactoryGirl.build(:petition, :exception => 'waiver')
    visit '/petitions'
    click_link 'petition_path'
    page.current_url.should == petition_url(petition)
  end

end
