class AddArtistIdToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :artist, foreign_key: true
  end
end
