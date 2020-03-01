class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist_name
      t.string :genre
      t.string :release_date
    end
  end
end
