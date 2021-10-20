class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.all[0...24]
    render json: movies
  end

  def create
    movie = Movie.create(movie_params)
    if movie.save
      render json: movie, status: :created
    else
      render json: { error: "Could not save this movie" }
    end
  end

  def search
    query = request.original_url.split('/').last
    response = Movie.search(query)
    render json: response
  end

  def show
    movie = Movie.find_by_id(params[:id])
    render json: movie
  end

  private
  def movie_params
    params.require(:movie).permit(
      :title, 
      :overview, 
      :poster_path, 
      :vote_average, 
      :external_id 
      )
  end

end
