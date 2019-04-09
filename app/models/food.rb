class Food < ApplicationRecord
    # if food item is removed form the db,
    # this line will ensure that the related reviews will be deleted as well.
    has_many :reviews, dependent: :destroy 
end
