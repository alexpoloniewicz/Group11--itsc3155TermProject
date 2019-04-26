# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rails db:reset db:mirgrate ----> to refesh databases
preselect = ["Flawless!",
              "Too much seasoning",
              "Too bland",
              "Served too often",
              "Temperature was off",
              "Seemed unsanitary",
              "Not served often enough",
              "My favorite dish",
              "Perfect amount of seasoning",
              "It was OK"]
Manager.create!(username: "SoviMaster", password: "godchef", password_confirmation: "godchef")
FoodClass.create!(name: "Cereal")
FoodClass.create!(name: "Entree")
FoodClass.create!(name: "Snack")
FoodClass.create!(name: "Side")
Food.create!(name: "friut loops", tod: "breakfast", FoodClass_id: 1, likes: 20, dislikes: 5)
Food.create!(name: "captain krunch", tod: "breakfast", FoodClass_id: 1, likes: 12, dislikes: 5)
Food.create!(name: "eggs", tod: "breakfast", FoodClass_id: 2, likes: 15, dislikes: 20)
Food.create!(name: "breakfast burrito", tod: "breakfast", FoodClass_id: 2, likes: 24, dislikes: 12)
Food.create!(name: "oatmeal", tod: "breakfast", FoodClass_id: 3, likes: 120, dislikes: 119)
Food.create!(name: "pizza", tod: "lunch", FoodClass_id: 2, likes: 50, dislikes: 7)
Food.create!(name: "potato wedges", tod: "dinner", FoodClass_id: 4, likes: 20, dislikes: 5)
Food.create!(name: "chicken alfredo", tod: "dinner", FoodClass_id: 2, likes: 25, dislikes: 3)
Food.create!(name: "chips", tod: "all day", FoodClass_id: 4, likes: 40, dislikes: 7)
Review.create!(email: "brand949@gmail.com", food_id: 1, like: 1, dislike: 0, comment: preselect[0])
Review.create!(email: "brand949@gmail.com", food_id: 4, like: 0, dislike: 1, comment: preselect[2])
Review.create!(email: "brand949@gmail.com", food_id: 3, like: 1, dislike: 0, comment: preselect[3])
Review.create!(email: "brand949@gmail.com", food_id: 6, like: 1, dislike: 0, comment: preselect[7])
Review.create!(email: "brand949@gmail.com", food_id: 2, like: 0, dislike: 1, comment: preselect[5])
Review.create!(email: "brand949@gmail.com", food_id: 5, like: 1, dislike: 0, comment: preselect[6])
Review.create!(email: "brand949@gmail.com", food_id: 1, like: 0, dislike: 1, comment: preselect[3])
Review.create!(email: "brand949@gmail.com", food_id: 7, like: 1, dislike: 0, comment: preselect[9])