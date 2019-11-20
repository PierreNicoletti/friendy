# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Users, Friends and Bookings database...'
Booking.destroy_all
Friend.destroy_all
User.destroy_all

puts 'Creating users...'
pierre = User.create!(email: "pierre@friendy.com", password: "password")
laura = User.create!(email: "laura@friendy.com", password: "password")
lionel = User.create!(email: "lionel@friendy.com", password: "password")
laetitia = User.create!(email: "laetitia@friendy.com", password: "password")

puts 'Creating friends...'
july = Friend.create!(user: laura, name: "July", birth_date: "01/05/1999", gender: "F", city: "Paris", description: "Very friendly person hanger to meet new people. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 320)
david = Friend.create!(user: laura, name: "David", birth_date: "01/02/1987", gender: "M", city: "Los Angeles", description: "Ready to rock your world. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 220)
tina = Friend.create!(user: laura, name: "Tina", birth_date: "01/05/1989", gender: "F", city: "London", description: "Very smily person indeed. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 290)
bob = Friend.create!(user: lionel, name: "Bob", birth_date: "01/05/1962", gender: "M", city: "Phoenix (AZ)", description: "I might look scary but I'm very nice, trust me. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 80)
laura = Friend.create!(user: lionel, name: "Laura", birth_date: "01/05/1980", gender: "L", city: "Nantes", description: "Salut, moi c'est Laura ! J'aime dessiner, sortir avec mes amis, et regarder des séries. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 100)
jenny = Friend.create!(user: lionel, name: "Jenny", birth_date: "01/05/1990", gender: "L", city: "Paris", description: "Je sais faire la roue et les crêpes au sucre. Lorem ipsum dolor sit amet, consectetur adipisicing elit.", price: 75)

puts 'Linking with photos...'
july_pic = URI.open("https://images.unsplash.com/photo-1485218173291-62104d18e1c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
july.photo.attach(io: july_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
david_pic = URI.open("https://images.unsplash.com/photo-1474293507615-951863a0f942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
david.photo.attach(io: david_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tina_pic = URI.open("https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=687&q=80")
tina.photo.attach(io: tina_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
bob_pic = URI.open("https://images.unsplash.com/photo-1461938337379-4b537cd2db74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80")
bob.photo.attach(io: bob_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laura_pic = URI.open("https://images.unsplash.com/photo-1559763480-bec95f04ad10?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jenny_pic = URI.open("https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
jenny.photo.attach(io: jenny_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

july.save!
david.save!
tina.save!
bob.save!
laura.save!
jenny.save!


puts 'Creating bookings...'
Booking.create!(friend: july, user: pierre, start_date: "15/11/2019", end_date: "16/11/2019");
Booking.create!(friend: tina, user: pierre, start_date: "15/12/2019", end_date: "16/12/2019");
