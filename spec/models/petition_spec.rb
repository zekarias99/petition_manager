require 'spec_helper'

describe Petition do 
  it "has a valid factory" do
    Factory.create(:petition).should be_valid
  end	
  #Factory.build() instantiates a new model but doesn't save it, avoiding breakdage from validation
  it "should instantiate with 'Pending' approval" do
    f = Factory.build(:petition)
    f.approved should eq 'Pending'
  end
  it "should have an exception type of either 'Waiver' or 'Substitution'" do
  	f = Factory.build(:petition)
    f.exception should eq 'Waiver' || 'Substitution'
  end
  it "should have a reason" do
    f = Factory.build(:petition)
    f.reason.should_not eq nil
  end
  it "is invalid without an assigned faculty"
    f = Factory.build(:petition)
    f.faculty.should_not eq nil
  end
  it "is invalid without at least one program" do
    pending
  end
end