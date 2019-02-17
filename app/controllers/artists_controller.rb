class ArtistsController < ApplicationController

  def create
  end

  def update
  end

  def show
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
