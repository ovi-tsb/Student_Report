class RemoveUserIdAndStudentIdFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :user_id, :integer
    remove_column :tests, :student_id, :integer
  end
end
