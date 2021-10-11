class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.call
    render json: movies
  end

  def search
    query = request.original_url.split('/').last
    response = Movie.search(query)
    render json: response
  end
end
