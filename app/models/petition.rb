class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason, :assets_attributes, :faculty_id, :student_id
  belongs_to :student
  belongs_to :faculty
  has_many :assets
  accepts_nested_attributes_for :assets
  validates :exception, :presence => true
end
