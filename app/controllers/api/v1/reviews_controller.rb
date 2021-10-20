class Api::V1::ReviewsController < ApplicationController
    def create
        review = Review.new(review_params)
        if review.save
            render json: review, status: :created
        else
            render json: { error: "There was an error. Please try again!" }
        end
    end

    def destroy
        review = Review.find_by_id(params[:id])
        review.destroy
        render json: { message: "Review was successfully removed" }
    end

    private
    def review_params
        params.require(:review).permit(:author_name, :content, :stars, :movie_id)
    end

end
