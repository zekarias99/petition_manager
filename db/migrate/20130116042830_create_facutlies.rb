class CreateFacutlies < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :username
      t.string :facutly_id

      t.timestamps
    end
  end
end
