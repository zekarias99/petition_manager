class Program < ActiveRecord::Base
  attr_accessible :owner, :title
  validates :owner, :title, :presence => true
end
