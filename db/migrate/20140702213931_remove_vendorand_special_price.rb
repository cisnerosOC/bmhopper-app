class RemoveVendorandSpecialPrice < ActiveRecord::Migration
  def change 
    change_table :products do |t|
    t.remove :vendor
    t.remove :vendor_number
    t.remove :special_price
    end
  end
end
