class FallbackController < ActionController::Base
    def index
        redirect_back(fallback_location: "http://127.0.0.1:3000/api/v1/movies", status: 404)
    end
end