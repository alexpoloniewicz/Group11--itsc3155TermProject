# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Manager.create!(username: "SoviMaster", password: "godchef", password_confirmation: "godchef")
FoodClass.create!(name: "cereal")
FoodClass.create!(name: "entree")
FoodClass.create!(name: "snack")
Food.create!(name: "friut loops", tod: "breakfast", FoodClass_id: 1, likes: 20, dislikes: 5)
Food.create!(name: "captain krunch", tod: "breakfast", FoodClass_id: 1, likes: 12, dislikes: 5)
Food.create!(name: "eggs", tod: "breakfast", FoodClass_id: 2, likes: 15, dislikes: 20)
Food.create!(name: "pizza", tod: "breakfast", FoodClass_id: 2, likes: 50, dislikes: 7)
Food.create!(name: "friut loops", tod: "breakfast", FoodClass_id: 1, likes: 20, dislikes: 5)