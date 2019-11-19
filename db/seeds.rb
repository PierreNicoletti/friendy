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

puts 'Creating friends...'
july = Friend.create!(user: pierre, name: "July", birth_date: "01/05/1999", gender: "F", city: "Paris", description: "Very friendly person hanger to meet new people", price: 320)
david= Friend.create!(user: laura, name: "David", birth_date: "01/02/1987", gender: "M", city: "Los Angeles", description: "Ready to rock your world", price: 220)
tina = Friend.create!(user: pierre, name: "Tina", birth_date: "01/05/1989", gender: "F", city: "London", description: "Very smily person indeed", price: 290)
bob = Friend.create!(user: laetitia, name: "Bobo", birth_date: "01/05/1962", gender: "M", city: "Phoenix (AZ)", description: "I might look scary but I'm very nice, trust me", price: 80)

puts 'Linking with photos...'
july_pic = URI.open("https://images.unsplash.com/photo-1485218173291-62104d18e1c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
july.photo.attach(io: july_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
david_pic = URI.open("https://images.unsplash.com/photo-1474293507615-951863a0f942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
david.photo.attach(io: david_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tina_pic = URI.open("https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=687&q=80")
tina.photo.attach(io: tina_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
bob_pic = URI.open("https://images.unsplash.com/photo-1461938337379-4b537cd2db74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80")
bob.photo.attach(io: bob_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

july.save
david.save
tina.save
bob.save
