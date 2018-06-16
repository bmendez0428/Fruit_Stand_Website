class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :suppliername
      t.string :suppliercity
      t.string :supplierstate
      t.string :fruitselection
      t.float :fruitimportweight

      t.timestamps null: false
    end
  end
end
