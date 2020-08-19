# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020-45648453", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020-54895434", category: "italian" }
dominos = { name: "Dominos", address: "56A Bilderdijkstraat, Amsterdam E1 6PQ", phone_number: "020-32485", category: "japanese"}
best_italian = { name: "Best Italian", address: "56A Dope Street, Berlin E1 6PQ", phone_number: "020-3466533", category: "french"}
awesome_lebanese = { name: "Awesome Lebanese", address: "56A Bos en Lommerplantsoen , Jerusalem E1 6PQ", phone_number: "020-3466533", category: "french"}

[ dishoom, pizza_east, dominos, best_italian, awesome_lebanese ].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
