class Faculty < User
  attr_accessible :faculty_id
  has_many :petitions
end
