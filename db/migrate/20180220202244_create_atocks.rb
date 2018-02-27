class CreateAtocks < ActiveRecord::Migration[5.0]
  def change
    create_table :atocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :las_price

      t.timestamps
    end
  end
end
