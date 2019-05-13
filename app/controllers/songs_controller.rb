class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    song = Song.new
    song.name = params[:song][:name]
    song.artist = Artist.find_by(name:params[:song][:artist])
    song.genre = Genre.find_by(name:params[:song][:genre])
    song.save

    redirect_to song_path(song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.name = params[:song][:name]
    song.artist = Artist.find_by(name:params[:song][:artist])
    song.genre = Genre.find_by(name:params[:song][:genre])
    song.save

    redirect_to song_path(song)
  end
end
