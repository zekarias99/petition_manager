class Petition < ActiveRecord::Base
  attr_accessible :approved, :exception, :reason, :assets_attributes
  #attr_accessible :petition_id #???
  #belongs_to :student
  #belongs_to :faculty
  #belongs_to :program
  #belongs_to :user

  has_many :assets
  accepts_nested_attributes_for :assets
  validates :exception, :presence => true
end
