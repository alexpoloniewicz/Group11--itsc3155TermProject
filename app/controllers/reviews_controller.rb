class ReviewsController < ApplicationController
    def index
        @foods = Food.all
    end

    def new
        @review = Review.new
    end
    def create
        @review = Review.new(review_params)
        # find reviews submited today that match the email and food_id of the 
        # review being submited
        @check_r = Review.find_by(updated_at: Date.today.all_day, email: @review.email, food_id: @review.food_id)
        @food = Food.where(id: @review[:food_id])
        if @review[:like] == 1
            @review[:dislike] = 0
        else
            @review[:dislike] = 1
        end
        
        if !@check_r.nil?
            # render an alert instend of new
            flash.now.alert = "You are only allowed one review per item, each day!"
            render 'new'
        elsif @review.save 
            # ---byebug 
            redirect_to welcome_index_path
            tally(@food) # can be found in reviews_helper
        else
            render 'new'
        end
        
    end
    
    def show
        @foods = Food.all
        @food = Food.find_by()
    end
end
private
def review_params
   params.require(:review).permit(:food_id, :email, :like,:comment) 
end