class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :cd_id
      t.string :song_title
      t.integer :disc_num

      t.timestamps
    end
  end
end
