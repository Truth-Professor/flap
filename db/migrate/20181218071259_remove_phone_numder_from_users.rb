class RemovePhoneNumderFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :phone_numder, :string
  end
end
