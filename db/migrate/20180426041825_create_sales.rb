class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.float :revenue
      t.integer :fruitsold
      t.string :fruittypesold

      t.timestamps null: false
    end
  end
end
