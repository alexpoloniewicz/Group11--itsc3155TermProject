module ReviewsHelper
    def preselect 
        @preselect = ["Too much seasoning",
                      "Too bland",
                      "Served too often",
                      "Temperature was off",
                      "Seemed unsanitary",
                      "Not served often enough",
                      "My favorite dish",
                      "Perfect amount of seasoning",
                      "Flawless!"]
    end
    # tally reviews
    def tally(food)
        l_count = 0
        d_count = 0
        Review.all.each do |r|
            if food == Food.where(id: r[:food_id])
                l_count += r.like
                d_count += r.dislike
            end 
        end
        food.update(likes: l_count, dislikes: d_count)
        hash = food.to_json # for tests
    end
end
