class ChangeCustomerNametoNameinCustomerTable < ActiveRecord::Migration
  def change
    rename_column :customers, :customer_name, :name
  end
end
