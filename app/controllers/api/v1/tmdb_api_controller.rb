class Api::V1::TmdbApiController < ApplicationController
  def index
    movies = TmdbApi.call
    render json: movies
  end

  def search
    query = request.original_url.split('/').last
    response = TmdbApi.search(query)
    render json: response
  end
end