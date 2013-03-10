require 'spec_helper'

describe Faculty do 
  it "has a valid factory" do
    Factory.create(:faculty).should be_valid
  end	
  #Factory.build() instantiates a new model but doesn't save it, avoiding breakdage from validation
  it "is invalid without a first name" do #username should generate first name if this was real
    Factory.build(:faculty, firstname: nil).should_not be_valid
  end
  it "is invalid without a last name" do #username should generate last name
  	Factory.build(:faculty, lastname: nil).should_not be_valid
  end
  it "is invalid without a username/email" do
    pending
  end
  it "is invalid without a faculty id" do
    pending
    #Factory?
    #validations: 9 digit number
  end
  it "is invalid without at least one program" do
    pending
    #Factory?
  end
end


#- program(s)_owned
#- type