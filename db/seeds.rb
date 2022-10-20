# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require "faker"

puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restaurants..."
  dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
  pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

  [dishoom, pizza_east].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
  end

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
  )
  puts "Restaurant with id: #{restaurant.id} has been created"
end

puts "Finished!"
