class RemoveIdsFromThings < ActiveRecord::Migration
  def up
    drop_table :students
    drop_table :faculty
  end

end
