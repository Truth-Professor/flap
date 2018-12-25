class AddProductNumToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :product_num, :integer
  end
end
