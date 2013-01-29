class Course < ActiveRecord::Base
  attr_accessible :course_id, :credits, :description, :title
  validates :course_id, :credits, :description, :title, :presence => true
end
