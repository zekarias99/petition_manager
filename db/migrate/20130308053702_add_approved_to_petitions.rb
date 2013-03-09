class AddApprovedToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :approved, :string
  end
end
