class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason, :assets_attributes, :faculty_id, :student_id
  belongs_to :student
  belongs_to :faculty
  has_many :assets
  accepts_nested_attributes_for :assets
  validates :exception, :presence => true

  def student_username
    student = Student.find(self.student_id)
    "#{student.firstname} #{student.lastname}"
  end

  def faculty_username
    faculty = Faculty.find(self.faculty_id)
    "#{faculty.firstname} #{faculty.lastname}"
  end
end
