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

Restaurant.create!(name: "Roland's Restaurant", capacity: 30, province: "Ontario", city: "Scarborough", street: "2900 Eglinton Avenue East", postal_code: "M1J2E4", phone_number: "(416) 431-4242", owner_id: 1)
Restaurant.create!(name: "Prak's Restaurant & Bar", capacity: 40,  province: "Ontario", city: "Scarborough", street: "752 Markham Rd", postal_code: "M1H2A9", phone_number: "(416)289-7310", owner_id: 2)
Restaurant.create!(name: "Timehri Restaurant", capacity: 50,  province: "Ontario", city: "Scarborough", street: "4531 Sheppard Ave East", postal_code: "M1S2V7", phone_number: "(416)335-7013")

Reservation.create!(date_time: DateTime.now, party_size: "8", user_id: 1, restaurant_id: 1)
Reservation.create!(date_time: DateTime.now, party_size: "6", user_id: 2, restaurant_id: 2)
Reservation.create!(date_time: DateTime.now, party_size: "7", user_id: 3, restaurant_id: 3)

cuisine_names = ["Caribbean", "Chinese", "Indian", "Mediterranean", "Japanese", "Specialty", "Vegetarian"]
cuisine_names.each do |name|
  Cuisine.create!(name: name)
end

