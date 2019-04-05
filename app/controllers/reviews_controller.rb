class ReviewsController < ApplicationController
    def index
        @foods = Food.all
    end
    
      
    def new
        @review = Review.new
    end
    def create 
        @review = Review.new(review_params)
        # ---byebug
        if @review[:like] == 1
            @review[:dislike] = 0
        else
            @review[:dislike] = 1
        end
        if @review.save # will return false is save is called on an invalid food
            # ---byebug 
            redirect_to welcome_index_path 
        else
            render 'new'
        end
    end
    
    def show
        @foods = Food.all
        @food = Food.find_by()
        #@likecount = tally(@food)
    end
end
private
def review_params
   params.require(:review).permit(:food_id, :like) 
end