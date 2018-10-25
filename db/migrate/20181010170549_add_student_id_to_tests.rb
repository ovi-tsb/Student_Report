class AddStudentIdToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :student_id, :integer
  end
end
