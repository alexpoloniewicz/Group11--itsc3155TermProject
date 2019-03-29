class AddLikesToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :likes, :integer
  end
end
