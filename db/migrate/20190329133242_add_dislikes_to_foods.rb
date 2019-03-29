class AddDislikesToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :dislikes, :integer
  end
end
