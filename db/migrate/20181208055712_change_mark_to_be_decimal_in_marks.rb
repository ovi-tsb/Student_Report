class ChangeMarkToBeDecimalInMarks < ActiveRecord::Migration[5.2]
  def up
    change_column :marks, :mark, :decimal
  end

  def down
    change_column :marks, :mark, :integer
  end
end
