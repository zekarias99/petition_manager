class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason, :asset
  #belongs_to :student
  #belongs_to :faculty
  #belongs_to :program
  #belongs_to :user
  has_attached_file :asset
  has_many :assets
  accepts_nested_attributes_for :assets
  validates :exception, :presence => true
end
