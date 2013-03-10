class AddPetitionIdToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :petition_id, :integer
  end
end
