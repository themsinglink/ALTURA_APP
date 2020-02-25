# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

User.destroy_all if Rails.env.development?

puts 'Creating users'

user_1 = User.new(email: "katy@gmail.com", password: "123456")
user_1.save!
user_2 = User.create(email: "laura@gmail.com", password: "123457")
user_3 = User.create(email: "meghan@gmail.com", password: "123458")
user_4 = User.create(email: "kendrikc@gmail.com", password: "123459")

puts "#{User.count} users created."

# Plane.destroy_all if Rails.env.development?

# puts 'Creating airplanes'

# plane_1 = Plane.create(capacity: 10, location: "Rio de Janeiro", name: "Boing 123", pilot_name: "Bruce", rate: 1000, description: "super stylish vintage model", user: user_1 )
# plane_2 = Plane.create(capacity: 6, location: "Tokyo", type: "Airbus 333", pilot_name: "Leslie", rate: 1500, description: "futuristic look", user: user_2 )

# puts "#{Plane.count} planes created."





