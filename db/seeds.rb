# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "open-uri"
User.destroy_all

User.create(email: "ajush@mail.com", name: "Ajush", password: "123456", city_of_origin: "Munich")
file = URI.open(" https://res.cloudinary.com/dij4z66rp/image/upload/v1669739447/Avatar%20photos/ajush_oquoxh.png")
reunion = Reunion.new(name: "Ajush", city_of_origin: "Munich")
reunion.user = user
reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
reunion.save

User.create(email: "joanna@mail.com", name: "Joanna", password: "123456", city_of_origin: "Madrid")
file = URI.open(" https://res.cloudinary.com/dij4z66rp/image/upload/v1669739453/Avatar%20photos/Joana_ctqmiq.png")
reunion = Reunion.new(name: "Joanna", city_of_origin: "Madrid")
reunion.user = user
reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
reunion.save

User.create(email: "maria@mail.com", name: "Maria", password: "123456", city_of_origin: "Geneva")
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739454/Avatar%20photos/maria_gzssqd.png")
reunion = Reunion.new(name: "Maria", city_of_origin: "Geneva")
reunion.user = user
reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
reunion.save

User.create(email: "pierre@mail.com", name: "Pierre", password: "123456", city_of_origin: "Amsterdam")
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739457/Avatar%20photos/pierre_wgvjbs.png")
reunion = Reunion.new(name: "Pierre", city_of_origin: "Amsterdam")
reunion.user = user
reunion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
reunion.save
