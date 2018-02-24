# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Deleting the database..."

User.destroy_all

puts "Seeding the database..."

puts "Adding User"
puts $user_password
User.create(email: "Lena@gmail.com", password: "123456")

(User.all.count == 1) ? (puts "correct - one user in the db") : (puts "Incorrect - No user added")

puts "Finished!"
