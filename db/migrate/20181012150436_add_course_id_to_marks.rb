class AddCourseIdToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :course_id, :integer
  end
end
