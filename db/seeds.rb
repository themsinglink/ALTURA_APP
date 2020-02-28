# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts 'Cleaning database...'
Booking.destroy_all
Plane.destroy_all
User.destroy_all

puts 'Creating users'

userphoto_1 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1578927204/z37gkiugtzu0smpt6jpf.jpg')
user_1 = User.new(email: "katy@gmail.com", password: "123456", bio: "Aviation has been my passion since I was a little girl so I don't only fly, I built all my planes myself. Excited to meet y'all here on ALTURA! Yewwww!!!", firstname: "Katy", lastname: "Link", location: "Biarritz, France")
user_1.photo.attach(io: userphoto_1, filename: 'userphoto_1.jpg', content_type: 'image/jpg')
user_1.save!

userphoto_2 = URI.open('https://avatars2.githubusercontent.com/u/58662021?v=4')
user_2 = User.new(email: "laura@gmail.com", password: "123456", bio: "I am the first woman in Spain to fly around the world in one go and am always looking for new places to try loops. Big fan of pandas and everything Chinese.", firstname: "Laura", lastname: "Aunion", location: "Madrid, Spain")
user_2.photo.attach(io: userphoto_2, filename: 'userphoto_2.jpeg', content_type: 'image/jpeg' )
user_2.save!

userphoto_3 = URI.open('https://avatars1.githubusercontent.com/u/59030202?v=4')
user_3 = User.create(email: "meghan@gmail.com", password: "123456", bio: "Besides passanger airplanes, turbo jets and helicopters, I actually own a pilot license for spaceships as well. Wanna fly to the moon with me?!", firstname: "Meghan", lastname: "Martin", location: "New York, USA")
user_3.photo.attach(io: userphoto_3, filename: 'userphoto_3.jpeg', content_type: 'image/jpeg' )
user_3.save!

userphoto_4 = URI.open('https://www.biography.com/.image/t_share/MTU0OTkwNDUxOTQ5MDUzNDQ3/kanye-west-attends-the-christian-dior-show-as-part-of-the-paris-fashion-week-womenswear-fall-winter-2015-2016-on-march-6-2015-in-paris-france-photo-by-dominique-charriau-wireimage-square.jpg')
user_4 = User.create(email: "kendrikc@gmail.com", password: "123456", bio: "Howdy ! Teaching people how to fly is my job and vocation ! Over 10.000 pilotes have learned how to land with me - hit me up if you want to become one of them!", firstname: "Kendrikc", lastname: "Rambal", location: "Madrid, Spain")
user_4.photo.attach(io: userphoto_4, filename: 'userphoto_4.jpg', content_type: 'image/jpg')
user_4.save!

puts "#{User.count} users created."

puts 'Creating airplanes'

file_1 = URI.open('https://i.imgur.com/Ii5oOfj.jpg')
plane_1 = Plane.new(capacity: 10, location: "Biarritz", name: "Boing 123", pilot_name: "Bruce", rate: 7000, description: "A unique vintage collectors model that will catch eyes up in the air and the ground. Comes with full crew and karaoke machine.", user: user_1)
plane_1.photo.attach(io: file_1, filename: 'file_1.jpg', content_type: 'image/jpg')
plane_1.save

file_2 = URI.open('https://i.imgur.com/j1GWOWG.jpg')
plane_2 = Plane.new(capacity: 6, location: "Tokyo", name: "Airbus 333", pilot_name: "Shin", rate: 1500, description: "A real speed machine, flying up to 2000km/h! Last minute invitation to the Paris but you're in Japan? This is YOUR plane!", user: user_2 )
plane_2.photo.attach(io: file_2, filename: 'file_2.jpg', content_type: 'image/jpg')
plane_2.save

file_3 = URI.open('https://i.imgur.com/9IVQRwF.jpg')
plane_3 = Plane.new(capacity: 12, location: "Lima", name: "Jumbo Jet", pilot_name: "Maria", rate: 3000, description: "The interior of this model was custom-designed by David Bowie and carries his legacy up in the clouds. Naturally, it comes with a fully-fledged soundsystem and dancefloor.", user: user_3 )
plane_3.photo.attach(io: file_3, filename: 'file_3.jpg', content_type: 'image/jpg')
plane_3.save

file_4 = URI.open('https://i.imgur.com/SQnhQrk.jpg')
plane_4 = Plane.new(capacity: 8, location: "Austin", name: "Embrayer 232", pilot_name: "Roger", rate: 2000, description: "A sweet little planey to run some quick errands. Don't judge her by her size, she's super agile and accelates like no other.", user: user_3 )
plane_4.photo.attach(io: file_4, filename: 'file_4.jpg', content_type: 'image/jpg')
plane_4.save

file_5 = URI.open('https://i.imgur.com/n7PoUr0.jpg')
plane_5 = Plane.new(capacity: 8, location: "Madrid", name: "Boing 777", pilot_name: "Matteo", rate: 2000, description: "Classic Boing from the early days - reliable, stylish and fun to fly. Comes with optional catering by Jamie Oliver.", user: user_4 )
plane_5.photo.attach(io: file_5, filename: 'file_5.jpg', content_type: 'image/jpg')
plane_5.save

file_6 = URI.open('https://i.imgur.com/EyF0u0V.jpg')
plane_6 = Plane.new(capacity: 10, location: "Anchorage", name: "Embrayer 561", pilot_name: "Nicole", rate: 3500, description: "Once you've tried this jet, you'll never want to fly another one. Comfy velvet couches for all passangers and human-size windows to fully enjoy the view from above.", user: user_1 )
plane_6.photo.attach(io: file_6, filename: 'file_6.jpg', content_type: 'image/jpg')
plane_6.save

puts "#{Plane.count} planes created."








