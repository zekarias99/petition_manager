class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason
  validates :exception, :presence => true
end
