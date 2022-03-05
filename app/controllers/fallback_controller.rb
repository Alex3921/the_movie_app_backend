class FallbackController < ActionController::Base
    def index
        redirect_back(fallback_location: "http://the-movie-app-backend.heroku.com/api/v1/movies", status: 404)
    end
end