class Student < ActiveRecord::Base
  attr_accessible :student_id, :username, :firstname, :lastname, :programs
end
