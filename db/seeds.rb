# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Deleting the database..."

Cost.destroy_all
User.destroy_all

puts "Seeding the database..."

puts "Adding User"
puts $user_password
User.create(email: "Lena@gmail.com", password: "123456")

(User.all.count == 1) ? (puts "correct - one user in the db") : (puts "Incorrect - No user added")

puts "Adding Costs"
# Adding two cost items to the database
Cost.create(name: "Hyra", amount: 120000, company_cost: true, start_date: "02/01/2018", end_date: "02/12/2018", number_of_assignees: 1)
Cost.create(name: "EL", amount: 12000, company_cost: true, start_date: "02/01/2018", end_date: "02/04/2018", number_of_assignees: 1)
(Cost.all.count == 2) ? (puts "correct - two costs in the db") : (puts "Incorrect - costs have not been created")

puts "Finished!"
