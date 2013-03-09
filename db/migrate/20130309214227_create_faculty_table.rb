class CreateFacultyTable < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :student_id
    end
    create_table :faculty do |t|
      t.integer :faculty_id
    end
  end
end
