class CreateFruitsales < ActiveRecord::Migration
  def change
    create_table :fruitsales do |t|
      t.integer :customer_id
      t.integer :fruit_id
      t.integer :saleprice
      t.date :purchasedate
      t.string :status
      t.integer :purchase_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
