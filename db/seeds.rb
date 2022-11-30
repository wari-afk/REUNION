# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

User.create(email: "maria@mail.com", password: "123456", origin: )
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739454/Avatar%20photos/maria_gzssqd.png")
article.photo.attach(io: file, filename: "maria_gzssqd.png", content_type: "image/png")
article.save


User.create(email: "pierre@mail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739457/Avatar%20photos/pierre_wgvjbs.png")
article.photo.attach(io: file, filename: "pierre_wgvjbs.png", content_type: "image/png")
article.save

User.create(email: "ajush@mail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739447/Avatar%20photos/ajush_oquoxh.png")
article.photo.attach(io: file, filename: "ajush_oquoxh.png", content_type: "image/png")
article.save

User.create(email: "joanna@mail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dij4z66rp/image/upload/v1669739453/Avatar%20photos/Joana_ctqmiq.png")
article.photo.attach(io: file, filename: "joanactqmiq.png", content_type: "image/png")
article.save
