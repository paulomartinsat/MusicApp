class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :album_name
      t.integer :year

      t.timestamps
    end
  end
end
