class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    song = Song.create(song_params)

    redirect_to song_path(song)
  end

  def show
  end

  def edit
    song = Song.find(params[:id])
    song.update(song_params)

    redirect_to(song)
  end

  def update
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
