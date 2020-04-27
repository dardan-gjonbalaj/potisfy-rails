class SongsController < ApplicationController
  def index
    #binding.pry
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    binding.pry
    #@tracks = RSpotify::Track.search("#{params[:song][:title]} #{params[:song][:artist]}")
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path(song)
    else
      render :new
    end
  end

  private 
  
  def song_params
    params.require(:song).permit(:title,:artist,:genre)
  end
end

