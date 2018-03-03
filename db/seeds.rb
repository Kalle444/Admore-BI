# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Deleting the database..."

User.destroy_all
CompanyCost.destroy_all
UserCompanyCost.destroy_all

puts "Seeding the database..."

puts "Adding User"
user_lena = User.create(first_name: "Lena", last_name: "Lovgren", email: "Lena@gmail.com", password: "123456")
user_bosse = User.create(first_name: "Bosse", last_name: "Karlsson", email: "Bosse@gmail.com", password: "123456")
user_uffe = User.create(first_name: "Uffe", last_name: "Svensson", email: "Uffe@gmail.com", password: "123456")
(User.all.count == 3) ? (puts "correct - #{User.all.count} users in the db") : (puts "Incorrect - #{User.all.count} user(s) added")

puts "Adding Company costs"
companycost_hyra = CompanyCost.create(name: "Hyra", amount: 120000, admore_cost: true, start_date: "02/01/2018", end_date: "02/12/2018")
companycost_resa = CompanyCost.create(name: "Resa", amount: 15000, start_date: "02/01/2018", end_date: "02/12/2018")
companycost_it = CompanyCost.create(name: "IT", amount: 5000, admore_cost: true, start_date: "02/01/2018", end_date: "02/12/2018")
companycost_parkering = CompanyCost.create(name: "Parkering", amount: 2000, start_date: "02/01/2018", end_date: "02/12/2018")
(CompanyCost.all.count == 4) ? (puts "correct - #{CompanyCost.all.count} company cost(s) in the db") : (puts "Incorrect - #{CompanyCost.all.count} company cost(s) added")

puts "Adding User company costs"
# Resa
usercompanycost_resa = UserCompanyCost.create(amount: 5000, user: user_lena, company_cost: companycost_resa)
usercompanycost_resa = UserCompanyCost.create(amount: 5000, user: user_bosse, company_cost: companycost_resa)
usercompanycost_resa = UserCompanyCost.create(amount: 5000, user: user_uffe, company_cost: companycost_resa)

# Parkering
usercompanycost_parkering = UserCompanyCost.create(amount: 1000, user: user_lena, company_cost: companycost_parkering)
usercompanycost_parkering = UserCompanyCost.create(amount: 1000, user: user_bosse, company_cost: companycost_parkering)

(UserCompanyCost.all.count == 5) ? (puts "correct - #{UserCompanyCost.all.count} user company cost(s) in the db") : (puts "Incorrect - #{CompanyCost.all.count} user company cost(s) added")

puts "Finished!"
