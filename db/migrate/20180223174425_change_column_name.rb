class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :atocks, :las_price, :last_price
  end
end
