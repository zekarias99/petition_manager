class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :course_id
      t.integer :credits

      t.timestamps
    end
  end
end
