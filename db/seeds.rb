# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# Destroy squids
puts "Destroy all squids"
Squid.destroy_all
puts "All squids succesfully destroyed"

# Destroy users
puts "Destroy all users"
User.destroy_all
puts "All users succesfully destroyed"

# # Destroy bookings
# puts "Destroy all bookings"
# Booking.destroy_all
# puts "All bookings succesfully destroyed"

# Create Users
puts "creating Users"

file = URI.open("https://www.koreaboo.com/lists/bts-suga-heartwarming-advice/#image")
addy = User.new(first_name: "Adlina", last_name: "Basuki", email: "adlina@gmail.com", password: "password")
addy.photo.attach(io: file, filename: "addy.png", content_type: "image/png")
addy.save

file = URI.open("https://images.unsplash.com/photo-1675079526143-2c4d1e62e655?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
jensen = User.new(first_name: "Jensen", last_name: "Drawan", email: "jensen@gmail.com", password: "password")
jensen.photo.attach(io: file, filename: "jensen.png", content_type: "image/png")
jensen.save

file = URI.open("https://images.unsplash.com/photo-1676487897175-9f155e391613?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80")
felicia = User.new(first_name: "Felicia", last_name: "Tjandinegara", email: "felicia@gmail.com", password: "password")
felicia.photo.attach(io: file, filename: "felicia.png", content_type: "image/png")
felicia.save

file = URI.open("https://images.unsplash.com/photo-1673368280570-8a42321216c9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1144&q=80")
julia = User.new(first_name: "Julia", last_name: "Thuden", email: "julia@gmail.com", password: "password")
julia.photo.attach(io: file, filename: "julia.png", content_type: "image/png")
julia.save

puts "Created #{User.count} users"

# Create Squids
puts "creating Squids"

file = URI.open("https://plus.unsplash.com/premium_photo-1661964453866-1ee129a25078?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1476&q=80")
squid_one = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: addy.id)
squid_one.photo.attach(io: file, filename: "squid_one.png", content_type: "image/png")
squid_one.save

file = URI.open("https://plus.unsplash.com/premium_photo-1669261880961-ea68f9a2b7f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
squid_two = Squid.new(name: "Yummy", description: "This is a yummy squid, bad for swimming but good for other things", price: 100, user_id: addy.id)
squid_two.photo.attach(io: file, filename: "squid_two.png", content_type: "image/png")
squid_two.save

file = URI.open("https://images.unsplash.com/photo-1547716752-9a0331effbef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1552&q=80")
squid_three = Squid.new(name: "Mr Cool", description: "Great swimmer", price: 70, user_id: addy.id)
squid_three.photo.attach(io: file, filename: "squid_three.png", content_type: "image/png")
squid_three.save

file = URI.open("https://images.unsplash.com/photo-1543007168-5fa9b3c5f5fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80")
squid_four = Squid.new(name: "Fake news", description: "This is actuallyt not a octopus...", price: 1, user_id: jensen.id)
squid_four.photo.attach(io: file, filename: "squid_four.png", content_type: "image/png")
squid_four.save

file = URI.open("https://images.unsplash.com/photo-1469532954151-60b475900aa2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
squid_five = Squid.new(name: "Dead", description: "This one is dead, but has potential to be tasty", price: 8, user_id: jensen.id)
squid_five.photo.attach(io: file, filename: "squid_five.png", content_type: "image/png")
squid_five.save

file = URI.open("https://images.unsplash.com/photo-1583902902560-9e8e2fede645?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
squid_six = Squid.new(name: "Suprise", description: "A gamble to book this one", price: 1000, user_id: felicia.id)
squid_six.photo.attach(io: file, filename: "squid_six.png", content_type: "image/png")
squid_six.save

file = URI.open("https://images.unsplash.com/photo-1510637234398-d25c9570a0a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80")
squid_seven = Squid.new(name: "Hidden", description: "Great at hiding. A game of hide and seak anyone?", price: 150, user_id: julia.id)
squid_seven.photo.attach(io: file, filename: "squid_seven.png", content_type: "image/png")
squid_seven.save

file = URI.open("https://images.unsplash.com/photo-1642672084202-00b8d61cf24c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
squid_eight = Squid.new(name: "SquidyMcSquid", description: "A great snorking buddy, knows all the fishes", price: 250, user_id: addy.id)
squid_eight.photo.attach(io: file, filename: "squid_eight.png", content_type: "image/png")
squid_eight.save

file = URI.open("https://images.unsplash.com/photo-1623180416574-e4a796a3aa3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
squid_nine = Squid.new(name: "Tako", description: "Your imagination is the only limitation", price: 763, user_id: jensen.id)
squid_nine.photo.attach(io: file, filename: "squid_nine.png", content_type: "image/png")
squid_nine.save

puts "Created #{Squid.count} users"
