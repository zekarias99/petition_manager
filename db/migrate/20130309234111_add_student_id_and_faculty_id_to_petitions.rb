class AddStudentIdAndFacultyIdToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :student_id, :integer
    add_column :petitions, :faculty_id, :integer
  end
end
