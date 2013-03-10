require 'spec_helper'

describe Faculty do 
  it "has a valid factory" do
    Factory.create(:faculty).should be_valid
  end	
  #Factory.build() instantiates a new model but doesn't save it, avoiding breakage from validation
  it "is invalid without a faculty id" do
    #Factory.build(:faculty, faculty_id: nil).should_not be_valid
    #validations: 9 digit number
    pending
  end
  it "is invalid without a password" do
    Factory.build(:faculty, password: nil).should_not be_valid
  end
  it "is invalid without at least one program" do
    pending
    #Factory?
  end
end


#- program(s)_owned
#- type