# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Restaurant.delete_all
Reservation.delete_all
MenuItem.delete_all


user1 = User.create!(name: "Malcolm MacLure", email: "a@b.c", loyalty_points: 0, password: "123")
user2 = User.create!(name: "Ben Hoppe", email: "q@w.e", loyalty_points: 0, password: "123")
user3 = User.create!(name: "Guest", email: "guest@reserveit.com", loyalty_points: 15, password: "password")

restaurant1 = Restaurant.create!(
  name: "Chez Malcolm",
  capacity: 30,
  max_reservation_size: 3,
  price_range: 4,
  summary: "Malcolm's restaurant, specializing in Chinese cuisine.  Try our mapo tofu!",
  user_id: user1.id,
  address: "20 St. Patrick St.", 
  neighbourhood: "Fashion District",
  category: "Chinese",
  mon_open_from: 8, mon_open_until: 19,
  tues_open_from: 8, tues_open_until: 19,
  wed_open_from: 8, wed_open_until: 19,
  thurs_open_from: 8, thurs_open_until: 19, 
  fri_open_from: 8, fri_open_until: 19,
  sat_open_from: 8, sat_open_until: 19,
  sun_open_from: 8, sun_open_until: 19,
  user_favourite: true
)

restaurant2 = Restaurant.create!(
  name: "Ben's Bistro",
  capacity: 25,
  max_reservation_size: 2,
  price_range: 1,
  summary: "A bistro with a wide assortment of refreshing drinks and nourishing eats.",
  user_id: user2.id,
  address: "20 Elgin St.", 
  neighbourhood: "Midtown",
  category: "Cafe",
  mon_open_from: 7, mon_open_until: 16,
  tues_open_from: 7, tues_open_until: 16,
  wed_open_from: 7, wed_open_until: 16,
  thurs_open_from: 7, thurs_open_until: 16, 
  fri_open_from: 7, fri_open_until: 16,
  sat_open_from: 9, sat_open_until: 16,
  sun_open_from: 9, sun_open_until: 16,
  user_favourite: true

)

restaurant3 = Restaurant.create!(
  name: "Black Lotus",
  capacity: 25,
  max_reservation_size: 2,
  price_range: 3,
  summary: "Your spicy food specialists. All-you-can-eat lunch buffet.",
  user_id: user3.id,
  address: "20 Queen St. W", 
  neighbourhood: "Fashion District",
  category: "Indian",
  mon_open_from: 12, mon_open_until: 19,
  tues_open_from: 12, tues_open_until: 19,
  wed_open_from: 12, wed_open_until: 19,
  thurs_open_from: 12, thurs_open_until: 19, 
  fri_open_from: 12, fri_open_until: 19,
  sat_open_from: 12, sat_open_until: 19,
  sun_open_from: 12, sun_open_until: 19,
  user_favourite: false
)

restaurant5 = Restaurant.create!(
  name: "Coco Ichiban",
  capacity: 20,
  max_reservation_size: 4,
  price_range: 1,
  summary: "The best Japanese curry restaurant. New dishes every month with seasonal ingredients.",
  user_id: user3.id,
  address: "200 Bloor St. W.", 
  neighbourhood: "Bloor",
  category: "Japanese",
  mon_open_from: 10, mon_open_until: 20,
  tues_open_from: 10, tues_open_until: 20,
  wed_open_from: 10, wed_open_until: 20,
  thurs_open_from: 10, thurs_open_until: 20, 
  fri_open_from: 10, fri_open_until: 20,
  sat_open_from: 10, sat_open_until: 20,
  sun_open_from: 10, sun_open_until: 20,
  user_favourite: false
)

restaurant6 = Restaurant.create!(
  name: "Oh My Cod!",
  capacity: 34,
  max_reservation_size: 8,
  price_range: 3,
  summary: "Nothin but cod. We serve the freshest catches of the day.",
  user_id: user3.id,
  address: "100 Bay St.", 
  neighbourhood: "Financial District",
  category: "Seafood",
  mon_open_from: 8, mon_open_until: 20,
  tues_open_from: 8, tues_open_until: 20,
  wed_open_from: 8, wed_open_until: 20,
  thurs_open_from: 8, thurs_open_until: 20, 
  fri_open_from: 8, fri_open_until: 23,
  sat_open_from: 12, sat_open_until: 23,
  sun_open_from: 12, sun_open_until: 20,
  user_favourite: false
)

restaurant7 = Restaurant.create!(
  name: "Gang Penang Gang",
  capacity: 40,
  max_reservation_size: 10,
  price_range: 4,
  summary: "Authentic Thai cuisine. We have special kids' menus.",
  user_id: user3.id,
  address: "200 King St.", 
  neighbourhood: "Entertainment District",
  category: "Thai",
  mon_open_from: 11, mon_open_until: 23,
  tues_open_from: 11, tues_open_until: 23,
  wed_open_from: 11, wed_open_until: 23,
  thurs_open_from: 11, thurs_open_until: 23, 
  fri_open_from: 11, fri_open_until: 23,
  sat_open_from: 12, sat_open_until: 23,
  sun_open_from: 12, sun_open_until: 23,
  user_favourite: false
)

restaurant7 = Restaurant.create!(
  name: "Robbie Burns'",
  capacity: 10,
  max_reservation_size: 2,
  price_range: 3,
  summary: "Cozy and intimate interior with the best haggis this side of Glasgow. Perfect for dates.",
  user_id: user3.id,
  address: "100 Dundas St..", 
  neighbourhood: "Roncesvale",
  category: "Scottish",
  mon_open_from: 9, mon_open_until: 23,
  tues_open_from: 9, tues_open_until: 23,
  wed_open_from: 9, wed_open_until: 23,
  thurs_open_from: 9, thurs_open_until: 23, 
  fri_open_from: 9, fri_open_until: 23,
  sat_open_from: 12, sat_open_until: 23,
  sun_open_from: 12, sun_open_until: 23,
  user_favourite: false
)

# reservation1 = Reservation.create!(
#   user_id: 1,
#   restaurant_id: 1,
#   time: 10,
#   date: Time.now + 30,
#   party_size: 2
# )

menu_item1 = MenuItem.create!(restaurant_id: restaurant1.id, dish: "Mapo Tofu", price: 12)
menu_item2 = MenuItem.create!(restaurant_id: restaurant1.id, dish: "Dan dan mien", price: 15)
menu_item3 = MenuItem.create!(restaurant_id: restaurant1.id, dish: "Shiaolongbao", price: 11)
menu_item4 = MenuItem.create!(restaurant_id: restaurant1.id, dish: "Hot sour soup", price: 9)

menu_item9 = MenuItem.create!(restaurant_id: restaurant2.id, dish: "Vegan Pizza", price: 14)
