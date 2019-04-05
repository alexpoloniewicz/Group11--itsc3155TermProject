class Food < ApplicationRecord
    has_many :reviews, dependent: :destroy
end
