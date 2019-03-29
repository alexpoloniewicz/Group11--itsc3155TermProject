class FoodsController < ApplicationController
    def index
        @foods = Food.all
    end
    
    def new

    end
    
    def show
        @foods = Food.all
        @food = Food.find(params[:format])
    end
end
private
def article_params
   params.require(:food).permit(:tod, :name) 
end

