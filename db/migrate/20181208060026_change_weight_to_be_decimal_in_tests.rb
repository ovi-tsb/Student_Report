class ChangeWeightToBeDecimalInTests < ActiveRecord::Migration[5.2]
  def up
        change_column :tests, :weight, :decimal
      end

      def down
        change_column :tests, :weight, :integer
      end
end
