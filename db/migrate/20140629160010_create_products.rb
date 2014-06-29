class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.string :vendor
      t.string :vendor_number
      t.decimal :price
      t.decimal :special_price

      t.timestamps
    end
  end
end
