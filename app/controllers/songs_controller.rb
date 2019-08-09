class SongsController < ApplicationController
  
  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
  
  def show
    @song = Song.find(params[:id])
    @genre = Song.find(params[:song][:genre_id])
  end
  
  def new
    @song = Song.new
  end
end
