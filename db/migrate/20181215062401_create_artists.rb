class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :artist_nameß

      t.timestamps
    end
  end
end
