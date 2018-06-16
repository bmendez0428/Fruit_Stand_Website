class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :fruitname
      t.string :supplier
      t.string :color
      t.text :description
      t.integer :price
      t.integer :currentinventoryweight
      t.string :imagepath

      t.timestamps null: false
    end
  end
end
