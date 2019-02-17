class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
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
