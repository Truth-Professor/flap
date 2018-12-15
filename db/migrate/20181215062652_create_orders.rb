class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.integer :cd_status

      t.timestamps
    end
  end
end
