module FoodsHelper
    def tally(food)
        l_count = 0
        d_count = 0
        Review.all.each do |r|
            review = r.to_json
            if food[:id] == r[:food_id]
                l_count += r.like
                d_count += r.dislike
            end 
        end
        food[:likes] = l_count
        food[:dislikes] = d_count
        food.update(likes: food[:likes], dislikes: food[:dislikes])
        hash = food.to_json # we will need this json string to use google charts
    end
end
