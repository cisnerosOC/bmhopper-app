class CreateServiceCalls < ActiveRecord::Migration
  def change
    create_table :service_calls do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
