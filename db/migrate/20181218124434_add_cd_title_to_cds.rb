class AddCdTitleToCds < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :cd_title, :string
  end
end
