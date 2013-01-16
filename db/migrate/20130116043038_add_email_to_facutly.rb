class AddEmailToFacutly < ActiveRecord::Migration
  def change
    add_column :faculties, :email, :string
  end
end
