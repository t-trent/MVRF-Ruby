class ReviewsController < ApplicationController
    before_action :get_restaurant

    def index
        @reviews = @restaurants.reviews
    end
    
    def new
        @review = @restaurant.reviews.build
    end

    def create
        @review = @restaurant.reviews.build(review_params)

        if @review.save
            redirect_to @review
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @review.destroy
    end

    def get_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    private 

    def review_params
        params.require(:review).permit(:rating, :content, :restaurant_id, :user_id)
    end

end
