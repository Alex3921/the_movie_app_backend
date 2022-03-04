class FallbackController < ActionController::Base
    def index
        render plain: "Woops! That's a dead end."
    end
end