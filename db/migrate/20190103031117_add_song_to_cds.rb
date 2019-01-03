class AddSongToCds < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :song, :string
  end
end
