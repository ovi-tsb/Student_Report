class AddStudentIdToTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :tests, :student, foreign_key: true
  end
end
