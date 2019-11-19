# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Users and Friends database...'
Friend.destroy_all
User.destroy_all

puts 'Creating users...'
pierre = User.create!(email: "pierre@friendy.com", password: "password")
laura = User.create!(email: "laura@friendy.com", password: "password")
lionel = User.create!(email: "lionel@friendy.com", password: "password")
laetitia = User.create!(email: "laetitia@friendy.com", password: "password")

puts 'Initializing friends...'
july = Friend.new(name: "July", birth_date: "01/05/1999", gender: "F", city: "Paris", description: "Very friendly person hanger to meet new people", price: 320)
david= Friend.new(name: "David", birth_date: "01/02/1987", gender: "M", city: "Los Angeles", description: "Ready to rock your world", price: 220)
tina = Friend.new(name: "Tina", birth_date: "01/05/1989", gender: "F", city: "London", description: "Very smily person indeed", price: 290)
bob = Friend.new(name: "July", birth_date: "01/05/1962", gender: "M", city: "Phoenix (AZ)", description: "I might look scary but I'm very nice, trust me", price: 80)

puts 'Linking friends to users...'
july.user = pierre
tina.user = pierre
david.user = laura
bob.user = laetitia

puts 'Saving friends ...'
july.save!
david.save!
tina.save!
bob.save!
