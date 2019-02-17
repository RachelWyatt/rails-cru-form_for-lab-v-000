class SongsController < ApplicationController
  def create
  end

  def update
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
