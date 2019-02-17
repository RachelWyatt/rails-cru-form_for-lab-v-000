class SongsController < ApplicationController
  def create
  end

  def update
  end

  def show
  end

  def edit

  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
