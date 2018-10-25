class AddTestIdToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :test_id, :integer
  end
end
