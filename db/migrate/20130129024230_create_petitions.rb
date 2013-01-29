class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.boolean :approved
      t.string :exception
      t.string :reason

      t.timestamps
    end
  end
end
