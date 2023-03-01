# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

# Create Users - Pictures??
addy = User.new(first_name: "Adlina", last_name: "Basuki", email: "adlina@gmail.com", password: "password")
addy.save
jensen = User.new(first_name: "Jensen", last_name: "Drawan", email: "jensen@gmail.com", password: "password")
jensen.save
felicia = User.new(first_name: "Felicia", last_name: "Tjandinegara", email: "felicia@gmail.com", password: "password")
felicia.save
julia = User.new(first_name: "Julia", last_name: "Thuden", email: "julia@gmail.com", password: "password")
julia.save


# Create Squids - Pictures??
squid_one = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: addy.id)
squid_one.save
squid_two = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: addy.id)
squid_two.save
squid_three = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: addy.id)
squid_three.save
squid_four = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: jensen.id)
squid_four.save
squid_five = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: jensen.id)
squid_five.save
squid_six = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: felicia.id)
squid_six.save
squid_seven = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: julia.id)
squid_seven.save
squid_eight = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: addy.id)
squid_eight.save
squid_nine = Squid.new(name: "Softie", description: "This is a soft squid that likes cuddle", price: 10, user_id: jensen.id)
squid_nine.save

# create_table "squids", force: :cascade do |t|
#   t.string "name"
#   t.integer "price"
#   t.string "image_url"
#   t.string "description"
#   t.bigint "user_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_squids_on_user_id"
# end
