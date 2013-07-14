class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def search
    name = params[:name]
    @query = Imdb::Search.new(name).movies[0..3]

  end

  def details
    id = params[:id]
    @movie = Imdb::Movie.new(id)
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def save
    #should be a post as it will populate the database
    id = params[:id]
    query = Imdb::Movie.new(id)
    movie = Movie.new
    movie.name = query.title
    movie.year = query.year
    movie.plot = query.plot
    movie.mpaa = query.mpaa_rating
    movie.rating = 50
    movie.save
    redirect_to('/movies')
  end

  def fave
    id = params[:id]
    query = Imdb::Movie.new(id)
    movie = Movie.new
    movie.name = query.title
    movie.year = query.year
    movie.plot = query.plot
    movie.mpaa = query.mpaa_rating
    movie.rating = 100
    movie.save
    redirect_to('/movies')
  end

  def rate_up
  id = params[:id]
  movie = Movie.find(id)
  movie.rating += 1
  movie.save
  redirect_to movies_show_path
  end

  def rate_down
  id = params[:id]
  movie = Movie.find(id)
  movie.rating -= 1
  movie.save
  redirect_to movies_show_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end