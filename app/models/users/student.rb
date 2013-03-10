class Student < User
  attr_accessible :student_id
  has_many :petitions
end
