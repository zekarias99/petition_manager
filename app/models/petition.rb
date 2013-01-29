class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason
end
