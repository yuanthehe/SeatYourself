# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
m1 = Restaurant.create([{name: 'Pizza Hut' }, {capacity: 30 }, {location: 'Yonge & Lawrence' }, {phone: '(416)789-5577' }, {food_type: 'Fast Food' }])
m2 = Restaurant.create([{name: "Gino's" }, {capacity: 20 }, {location: 'Avenue & Eglinton'}, {phone: '(647)572-6472' }, {food_type: 'Italian'}])
m3 = Restaurant.create([{name: 'Sacre Bleu' }, {capacity: 32 }, {location: 'Yorkville' }, {phone: '(416)443-5627' }, {food_type: 'French'}])
r1 = Review.create([{user_id: 1}, {restaurant_id: 1}, {content: "Smells like cockroaches and the pizza tastes like cardboard."}])
r2 = Review.create([{user_id: 2}, {restaurant_id: 2}, {content: "Chef Antoiné should be ashamed of himself."}])
u1 = User.create([{name: "Donald Trump"}, {email: "thedonald@email.com"}, {password: "test"}, {password_confirmation: "test"}])
u2 = User.create([{name: "Sam Ronaldi"}, {email: "negativesam@email.com"}, {password: "test"}, {password_confirmation: "test"}])
