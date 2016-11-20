class GenresController < ApplicationController

  def index
    @genres=Genre.all
  end

  def new
    @genre=Genre.new
  end

  def create
    @genre=Genre.create(genre_params)
    redirect_to genres_path
  end

  def show
    @genre=Genre.find(params[:id])
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def update
    @genre=Genre.find(params[:id])
    if @genre.update(genre_params)
    redirect_to genre_path
    else
      render 'edit'
    end
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
