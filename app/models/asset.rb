class Asset < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :asset
  attr_accessor :asset_file_name
  has_attached_file :asset
  belongs_to :petition #this did not work. maybe take it out
end
