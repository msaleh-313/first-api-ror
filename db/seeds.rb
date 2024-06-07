# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
Product.create(
  [
    {name: "Wars",brand:"marvelous",price: "1000 Rs"},
    {name: "Star-Wars",brand:"comic",price: "2000 Rs"},
    {name: "Wars",brand:"adventure",price: "3000 Rs"},
    {name: "Batman",brand:"suspense",price: "4000 Rs"},
    {name: "SuperMan",brand:"action",price: "5000 Rs"},
    {name: "Iron Man",brand:"funny",price: "6000 Rs"}






  ]
)
