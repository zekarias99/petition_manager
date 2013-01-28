require 'spec_helper'

describe Program do
	it "has a valid factory" do
		Factory.create(:program).should be_valid
	end

	it "has a title" do
		Factory.build(:program, title: nil).should_not be_valid
	end

	it "has an owner" do #there's a better word than owner
		Factory.build(:program, owner: nil).should_not be_valid
	end #faculty_id 

	# it "has courses" do
	# 	Factory.build(:program, courses: nil).should_not be_valid
	# end
end
