class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :tod
      t.string :name

      t.timestamps
    end
  end
end
