class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
    	t.string :price
    	t.integer :order_id
    	t.string :address
    	t.string :product_num

      t.timestamps
    end
  end
end
