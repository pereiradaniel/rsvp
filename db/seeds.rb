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

Restaurant.create!(name: "MacDonalds", capacity: 10, province: "Ontario", city: "Toronto", street: "55 Yonge St.", postal_code: "L2Y 3U9", phone_number: "416-456-7896", owner_id: 1)
Restaurant.create!(name: "Henry's", capacity: 100,  province: "Alberta", city: "Edmonton", street: "99 King St.", postal_code: "M2M 3R2", phone_number: "780-45687893", owner_id: 1)
Restaurant.create!(name: "Burgerlings", capacity: 30,  province: "Quebec", city: "Montreal", street: "45 Lange Ave.", postal_code: "M5S 2X8", phone_number: "776-456-7789")

Reservation.create!(date_time: DateTime.now, party_size: "8", user_id: 1, restaurant_id: 1)
Reservation.create!(date_time: DateTime.now, party_size: "6", user_id: 2, restaurant_id: 2)
Reservation.create!(date_time: DateTime.now, party_size: "7", user_id: 3, restaurant_id: 3)



