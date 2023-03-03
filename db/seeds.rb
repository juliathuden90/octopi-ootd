# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# Destroy bookings
puts "Destroy all bookings"
Booking.destroy_all
puts "All bookings succesfully destroyed"

# Destroy squids
puts "Destroy all squids"
Squid.destroy_all
puts "All squids succesfully destroyed"

# Destroy users
puts "Destroy all users"
User.destroy_all
puts "All users succesfully destroyed"

# Create Users
puts "creating Users"

file = URI.open("https://lh3.googleusercontent.com/7tIF282v4iWX9XYW5sk19CSDBgAZpbVnwHC5X_OsXSueS32ZEEoxs2TEh0BVIEQ2tk1k513me7mU0YbQMwy57UHhETxCGsZtWmmb-77P2G49VA=w960-rj-nu-e365")
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

file = URI.open("https://images.unsplash.com/photo-1628944681206-2ee8d63b0a6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
squid_one = Squid.new(name: "Octavius", description: "Octavius is a friendly and playful octopus who loves to explore the ocean with his human friends. With his eight arms, he can help you navigate through the underwater world like a pro. His colorful and mesmerizing tentacles will make your dive unforgettable.", price: 50, user_id: addy.id)
squid_one.photo.attach(io: file, filename: "squid_one.png", content_type: "image/png")
squid_one.save

file = URI.open("https://images.unsplash.com/photo-1547716752-9a0331effbef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2504&q=80")
squid_two = Squid.new(name: "Ink", description: "Ink is a mysterious and enigmatic octopus who likes to keep to herself. She's a bit shy, but once she gets to know you, she'll be your loyal diving buddy. Ink is a great companion for those who prefer a calm and peaceful dive, as she's not much of a thrill-seeker.", price: 60, user_id: addy.id)
squid_two.photo.attach(io: file, filename: "squid_two.png", content_type: "image/png")
squid_two.save

file = URI.open("https://images.unsplash.com/photo-1548645933-c62d4468cbb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
squid_three = Squid.new(name: "Eightball", description: " Eightball is a cool and collected octopus who always keeps his cool under pressure. He's a great problem-solver and can help you navigate through difficult underwater situations. With his laid-back personality and calming presence, Eightball is perfect for those who want a stress-free dive.", price: 80, user_id: addy.id)
squid_three.photo.attach(io: file, filename: "squid_three.png", content_type: "image/png")
squid_three.save

file = URI.open("https://images.unsplash.com/photo-1617718724572-c7dd48e5ef62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
squid_four = Squid.new(name: "Cephalo", description: "Cephalo is a fierce and adventurous octopus who loves to explore the depths of the ocean. He's not afraid of anything and will gladly take you on a thrilling underwater adventure. With his keen sense of direction and intelligence, Cephalo is the perfect guide for experienced divers.", price: 75, user_id: jensen.id)
squid_four.photo.attach(io: file, filename: "squid_four.png", content_type: "image/png")
squid_four.save

file = URI.open("https://images.unsplash.com/photo-1543823530-dbe8d7d04a9b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1970&q=80")
squid_five = Squid.new(name: "Squirt", description: "Squirt is a fun-loving and energetic octopus who's always up for a good time. He's the life of the party and will keep you entertained throughout your entire dive. Squirt is great for divers who want to have a memorable and enjoyable experience.", price: 55, user_id: jensen.id)
squid_five.photo.attach(io: file, filename: "squid_five.png", content_type: "image/png")
squid_five.save

file = URI.open("https://images.unsplash.com/photo-1598846021745-0458b842a4c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1954&q=80")
squid_six = Squid.new(name: "Kraken", description: "Kraken is a massive and powerful octopus who commands respect from all who encounter him. He's not the friendliest octopus, but if you earn his trust, he'll be a loyal and dependable diving buddy. Kraken is the perfect companion for those who want to feel like they're swimming with a sea monster.", price: 100, user_id: felicia.id)
squid_six.photo.attach(io: file, filename: "squid_six.png", content_type: "image/png")
squid_six.save

file = URI.open("https://images.unsplash.com/photo-1558729924-714b0a8e0574?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
squid_seven = Squid.new(name: "Bubble", description: "Bubble is a curious and playful octopus who loves to interact with humans. She's always eager to learn new things and explore new places. With her bubbly personality and friendly nature, Bubble is great for beginner divers.", price: 45, user_id: jensen.id)
squid_seven.photo.attach(io: file, filename: "squid_seven.png", content_type: "image/png")
squid_seven.save

file = URI.open("https://images.unsplash.com/photo-1642702020632-7b15c5c67a21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2664&q=80")
squid_eight = Squid.new(name: "Octavia", description: "Octavia is a graceful and elegant octopus who moves through the water with ease. She's a bit of a diva and likes to be the center of attention, but she's also a loyal and dependable diving buddy. Octavia is perfect for those who want to experience the beauty of the ocean in style.", price: 65, user_id: addy.id)
squid_eight.photo.attach(io: file, filename: "squid_eight.png", content_type: "image/png")
squid_eight.save

file = URI.open("https://images.unsplash.com/photo-1585094811179-4d890b8b45b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2664&q=80")
squid_nine = Squid.new(name: "Wavy", description: "Wavy is a free-spirited and unconventional octopus who marches to the beat of her own drum. She's not afraid to take risks and try new things, which makes her an exciting diving buddy. Wavy is perfect for divers who want to break out of their comfort zone and experience something different.", price: 75, user_id: addy.id)
squid_nine.photo.attach(io: file, filename: "squid_nine.png", content_type: "image/png")
squid_nine.save

file = URI.open("https://images.unsplash.com/photo-1655243857796-d5bdcc78b27c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
squid_ten = Squid.new(name: "Neon", description: "Neon is a vibrant and colorful octopus who loves to stand out from the crowd. With his bright neon tentacles, he's easy to spot underwater and will make your dive a visually stunning experience. Neon is great for photographers and videographers who want to capture the beauty of the ocean in a unique way.", price: 95, user_id: felicia.id)
squid_ten.photo.attach(io: file, filename: "squid_nine.png", content_type: "image/png")
squid_ten.save

file = URI.open("https://images.unsplash.com/photo-1561479639-747efc0d0bf2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2380&q=80")
squid_eleven = Squid.new(name: "Atlas", description: "Atlas is a strong and determined octopus who can move heavy objects with ease. He's a bit of a workaholic and loves to help his diving buddies with their underwater tasks. Atlas is great for technical divers who need an extra set of hands for their equipment or underwater construction projects.", price: 85, user_id: felicia.id)
squid_eleven.photo.attach(io: file, filename: "squid_nine.png", content_type: "image/png")
squid_eleven.save

puts "Created #{Squid.count} squids"

# Create bookings
puts "Creating bookings"

booking_one = Booking.new(rent_date: Date.today, user: felicia, squid: squid_one, status: "Accepted")
booking_one.save
booking_two = Booking.new(rent_date: Date.new(2023, 4, 27), user: jensen, squid: squid_eleven, status: "Pending")
booking_two.save
booking_three = Booking.new(rent_date: Date.new(2023, 3, 16), user: julia, squid: squid_seven, status: "Accepted")
booking_three.save
booking_four = Booking.new(rent_date: Date.new(2023, 4, 28), user: julia, squid: squid_five, status: "Accepted")
booking_four.save

puts "Created #{Booking.count} bookings"
