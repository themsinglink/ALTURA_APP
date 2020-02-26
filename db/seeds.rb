# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts 'Cleaning database...'

Plane.destroy_all
User.destroy_all

puts 'Creating users'

user_1 = User.new(email: "katy@gmail.com", password: "123456")
user_1.save!
user_2 = User.create(email: "laura@gmail.com", password: "123457")
user_3 = User.create(email: "meghan@gmail.com", password: "123458")
user_4 = User.create(email: "kendrikc@gmail.com", password: "123459")


puts "#{User.count} users created."

puts 'Creating airplanes'

file_1 = URI.open('https://i.imgur.com/Ii5oOfj.jpg')
plane_1 = Plane.new(capacity: 10, location: "Rio de Janeiro", name: "Boing 123", pilot_name: "Bruce", rate: 1000, description: "super stylish vintage model", user: user_4)
plane_1.photo.attach(io: file_1, filename: 'file_1.jpg', content_type: 'image/jpg')
plane_1.save

file_2 = URI.open('https://i.imgur.com/j1GWOWG.jpg')
plane_2 = Plane.new(capacity: 6, location: "Tokyo", name: "Airbus 333", pilot_name: "Leslie", rate: 1500, description: "futuristic look", user: user_2 )
plane_2.photo.attach(io: file_2, filename: 'file_2.jpg', content_type: 'image/jpg')
plane_2.save

file_3 = URI.open('https://i.imgur.com/9IVQRwF.jpg')
plane_3 = Plane.new(capacity: 12, location: "Santiago de Chile", name: "Jumbo Jet", pilot_name: "Maria", rate: 3000, description: "the largest plane to rent", user: user_3 )
plane_3.photo.attach(io: file_3, filename: 'file_3.jpg', content_type: 'image/jpg')
plane_3.save

file_4 = URI.open('https://i.imgur.com/SQnhQrk.jpg')
plane_4 = Plane.new(capacity: 8, location: "Austin", name: "Embrayer 232", pilot_name: "Roger", rate: 2000, description: "Texas' best", user: user_3 )
plane_4.photo.attach(io: file_4, filename: 'file_4.jpg', content_type: 'image/jpg')
plane_4.save

file_5 = URI.open('https://i.imgur.com/n7PoUr0.jpg')
plane_5 = Plane.new(capacity: 6, location: "Olso", name: "Boing 777", pilot_name: "Matteo", rate: 2000, description: "latest technologie and beautiful interio design", user: user_1 )
plane_5.photo.attach(io: file_5, filename: 'file_5.jpg', content_type: 'image/jpg')
plane_5.save

file_6 = URI.open('https://i.imgur.com/EyF0u0V.jpg')
plane_6 = Plane.new(capacity: 10, location: "Anchorage", name: "Embrayer 561", pilot_name: "Nicole", rate: 3500, description: "specially equipped for cold weather", user: user_4 )
plane_6.photo.attach(io: file_6, filename: 'file_6.jpg', content_type: 'image/jpg')
plane_6.save

puts "#{Plane.count} planes created."








