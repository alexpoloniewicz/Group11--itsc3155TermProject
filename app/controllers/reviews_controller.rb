class ReviewsController < ApplicationController
    def index
        @foods = Food.all
    end
    
    def new
        @food = Food.find_by(id: 1)
    end
    
    def show
        @foods = Food.all
        @food = Food.find_by()
        #@likecount = tally(@food)
    end
end
