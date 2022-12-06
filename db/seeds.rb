# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "open-uri"

puts "Destroying seeds..."
User.destroy_all

ajush = User.create!(email: "ajush@mail.com", name: "Ajush", password: "123456", city_of_origin: "Munich")
image = URI.open("https://kitt.lewagon.com/placeholder/users/ajushnitta")
ajush.photo.attach(io: image, filename: ajush.name)
puts "#{ajush.name} seeded"
# reunion = Reunion.new(name: "Ajush", city_of_origin: "Munich")
# reunion.user = user
# reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# reunion.save!

joanna = User.create!(email: "joanna@mail.com", name: "Joanna", password: "123456", city_of_origin: "Madrid")
image = URI.open("https://kitt.lewagon.com/placeholder/users/Joanartdacosta")
joanna.photo.attach(io: image, filename: joanna.name)
puts "#{joanna.name} seeded"
# reunion = Reunion.new(name: "Joanna", city_of_origin: "Madrid")
# reunion.user = user
# reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# reunion.save!

maria = User.create!(email: "maria@mail.com", name: "Maria", password: "123456", city_of_origin: "Geneva")
image = URI.open("https://kitt.lewagon.com/placeholder/users/maandrello")
maria.photo.attach(io: image, filename: maria.name)
puts "#{maria.name} seeded"
# reunion = Reunion.new(name: "Maria", city_of_origin: "Geneva")
# reunion.user = user
# reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# reunion.save!

pierre = User.create!(email: "pierre@mail.com", name: "Pierre", password: "123456", city_of_origin: "Amsterdam")
image = URI.open("https://kitt.lewagon.com/placeholder/users/wari-afk")
pierre.photo.attach(io: image, filename: pierre.name)
puts "#{pierre.name} seeded"
# reunion = Reunion.new(name: "Pierre", city_of_origin: "Amsterdam")
# reunion.user = user
# reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# reunion.save!
