require 'spec_helper'

describe Course do
	it "has a valid factory" do
		Factory.create(:course).should be_valid
	end
	it "has a title" do
		Factory.build(:course, title: nil).should_not be_valid
	end
	it "has a description" do
		Factory.build(:course, description: nil).should_not be_valid
	end
	it "has a course id" do
		Factory.build(:course, course_id: nil).should_not be_valid
	end
	# it "has prerequisites" do
	# 	Factory.build(:course, prerequisites: nil)
	# end
	it "is assigned credits" do
		Factory.build(:course, credits: nil).should_not be_valid
	end
end
# programs_associated