class FoodsController < ApplicationController
    def index
        @foods = Food.all
        @foodClass = FoodClass.all
    end
    
    def new

    end
    
    def show
        @foods = Food.all
        @foodClass = FoodClass.all
        
        if FoodClass.exists?(:name => params[:format])
            @specific_foods = Food.where(FoodClass_id: FoodClass.where(name: params[:format]))
        elsif contains_letter(params[:format])
            @specific_foods = Food.where(tod: params[:format])
        else
            @specific_foods = Food.where(id: params[:format])
        end
        
    end
end
private
def article_params
   params.require(:food).permit(:tod, :name) 
end
def contains_letter(str)
  str =~ /[a-z]/
end

