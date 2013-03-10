class AddPetitionIdToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :petition_id, :integer
  end
end
