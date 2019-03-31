class AddFoodClassToFoods < ActiveRecord::Migration[5.2]
  def change
    add_reference :foods, :FoodClass, foreign_key: true
  end
end
