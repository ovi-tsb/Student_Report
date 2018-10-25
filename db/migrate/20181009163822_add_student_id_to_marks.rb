class AddStudentIdToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :student_id, :integer
  end
end
