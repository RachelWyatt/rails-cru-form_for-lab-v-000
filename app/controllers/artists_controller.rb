class ArtistsController < ApplicationController

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
