# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Cleaning the database...'
Restaurant.destroy_all

categories = %w[chinese italian japanese french belgian]

puts 'Seeding you database...'

5.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: categories[rand(categories.size)], phone_number: Faker::PhoneNumber.phone_number)
end
puts 'Done!'
