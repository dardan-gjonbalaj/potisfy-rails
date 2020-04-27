class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  
  def artist_attributes=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
    self.artist.update(artist)
  end

end
