# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Manager.create!(username: "SoviMaster", password: "godchef", password_confirmation: "godchef")
FoodClass.create!(name: "Cereal")
FoodClass.create!(name: "Entree")
FoodClass.create!(name: "Snack")
FoodClass.create!(name: "Side")
Food.create!(name: "friut loops", tod: "breakfast", FoodClass_id: 1, likes: 20, dislikes: 5)
Food.create!(name: "captain krunch", tod: "breakfast", FoodClass_id: 1, likes: 12, dislikes: 5)
Food.create!(name: "eggs", tod: "breakfast", FoodClass_id: 2, likes: 15, dislikes: 20)
Food.create!(name: "pizza", tod: "lunch", FoodClass_id: 2, likes: 50, dislikes: 7)
Food.create!(name: "potato wedges", tod: "lunch", FoodClass_id: 4, likes: 20, dislikes: 5)
Food.create!(name: "chicken alfredo", tod: "lunch", FoodClass_id: 2, likes: 20, dislikes: 5)
Review.create!(email: "brand949@gmail.com", Food_id: 1, like: 1, dislike: 0, comment: preselect[0])
Review.create!(email: "brand949@gmail.com", Food_id: 4, like: 0, dislike: 1, comment: preselect[4])
Review.create!(email: "brand949@gmail.com", Food_id: 3, like: 1, dislike: 0, comment: preselect[3])
Review.create!(email: "brand949@gmail.com", Food_id: 6, like: 1, dislike: 0, comment: preselect[2])
