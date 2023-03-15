class RenameTypeOnFeedings < ActiveRecord::Migration[7.0]
  def change
    rename_column :feedings, :type, :item
    change_column_null :feedings, :item, false
  end
end
