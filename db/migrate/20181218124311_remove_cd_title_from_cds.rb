class RemoveCdTitleFromCds < ActiveRecord::Migration[5.2]
  def change
    remove_column :cds, :cd_title, :integer
  end
end
