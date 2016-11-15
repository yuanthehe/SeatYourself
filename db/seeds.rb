# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

m1 = Restaurant.create([{name: 'Pizza Hut', capacity: 30, location: 'Yonge & Lawrence', phone: '(416)789-5577', food_type: 'Fast Food'}])
m2 = Restaurant.create([{name: "Gino's", capacity: 20, location: 'Avenue & Eglinton', phone: '(647)572-6472', food_type: 'Italian'}])
m3 = Restaurant.create([{name: 'Sacre Bleu', capacity: 32, location: 'Yorkville', phone: '(416)443-5627', food_type: 'French'}])
m4 = Restaurant.create([{name: 'Pizza Nova', capacity: 31, location: 'Yonge & Eglinton', phone: '(416)789-5588', food_type: 'Fast Food' }])
