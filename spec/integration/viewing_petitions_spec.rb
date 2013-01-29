require 'spec_helper'

feature "Viewing petitions" do

  scenario "Listing all open petitions" do
    project = FactoryGirl.build(:petition, {:id => 1, :approved => true})
    visit '/'
    click_link '1'
    page.current_url.should == petition_url(petition)
  end

end
