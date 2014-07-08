class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :company_name

      t.timestamps
    end
  end
end
