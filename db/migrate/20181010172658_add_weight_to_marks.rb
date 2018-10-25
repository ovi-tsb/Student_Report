class AddWeightToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :weight, :integer
  end
end
