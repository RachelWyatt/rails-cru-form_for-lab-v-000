class GenresController < ApplicationController
  def create
  end

  def update
  end

  def show
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
