class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.call
    render json: movies
  end

  def create
    byebug
    if movie.save
      render json: movie, status: :created
    else
      render json: {error: "Could not save this movie"}
    end
  end

  def search
    query = request.original_url.split('/').last
    response = Movie.search(query)
    render json: response
  end

  private
  def movie_params
    params.require(:movie).permit(
      :title, 
      :overview, 
      :poster_path, 
      :vote_average, 
      :external_id, 
      reviews_attributes: 
        [
          :author_name, 
          :content, 
          :stars, 
          :movie_id
        ]
      )
  end
end
