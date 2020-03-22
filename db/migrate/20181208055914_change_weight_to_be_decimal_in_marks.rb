class ChangeWeightToBeDecimalInMarks < ActiveRecord::Migration[5.2]
  def up
      change_column :marks, :weight, :decimal
    end

    def down
      change_column :marks, :weight, :integer
    end
end
