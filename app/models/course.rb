class Course < ActiveRecord::Base
  attr_accessor :title, :description, :course_id, :credits #prerequisites
end