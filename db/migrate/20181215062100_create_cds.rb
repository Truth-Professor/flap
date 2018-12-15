class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|
      t.integer :cd_title
      t.text :jacket_image_id
      t.integer :artist_id
      t.integer :label_id
      t.integer :disc
      t.integer :genre_id
      t.integer :price
      t.integer :stock
      t.integer :recommended
      end

      t.timestamps
    end
  end
end
