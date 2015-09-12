# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "super", email: "super@mail.com", password: "password", password_confirmation: "password")
User.create!(name: "man", email: "man@mail.com", password: "password", password_confirmation: "password")
User.create!(name: "jon", email: "jon@mail.com", password: "password", password_confirmation: "password")

Restaurant.create!(name: "Mac Donalds", capacity: 10)
Restaurant.create!(name: "Henry's", capacity: 100)
Restaurant.create!(name: "Burgerlings", capacity: 30)

Reservation.create!(date_time: "5", party_size: "8", user_id: 1, restaurant_id: 1)
Reservation.create!(date_time: "6", party_size: "6", user_id: 2, restaurant_id: 2)
Reservation.create!(date_time: "5", party_size: "7", user_id: 3, restaurant_id: 3)