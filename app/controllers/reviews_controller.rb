class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json:reviews
    end 

    def create
        review = Review.create(review_params)
        render json:review 
    end 

    # def destroy
    # end 

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :workout_id)
    end 


end
