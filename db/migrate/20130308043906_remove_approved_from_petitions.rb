class RemoveApprovedFromPetitions < ActiveRecord::Migration
  def up
    remove_column :petitions, :approved
  end

  def down
    add_column :petitions, :approved, :string
  end
end
