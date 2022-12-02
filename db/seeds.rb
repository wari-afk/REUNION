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
User.create(email: "joanna@mail.com", name: "Joanna", password: "123456", city_of_origin: "Madrid")
User.create(email: "maria@mail.com", name: "Maria", password: "123456", city_of_origin: "Geneva")
User.create(email: "pierre@mail.com", name: "Pierre", password: "123456", city_of_origin: "Amsterdam")
