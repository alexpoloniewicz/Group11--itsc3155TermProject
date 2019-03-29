module FoodsHelper
    def tally(food_id)
        count = 0
        Review.all.each do |r|
            review = r.to_json
            if food_id == r.food_id
                count += r.like
            end 
        end
        return count
    end
end
