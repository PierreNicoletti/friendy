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
pierre = User.create!(email: "pierre@friendy.com", password: "password", first_name: "Pierre", last_name: "N", address: "Paris")
laura = User.create!(email: "laura@friendy.com", password: "password", first_name: "Laura", last_name: "C", address: "Paris")
lionel = User.create!(email: "lionel@friendy.com", password: "password", first_name: "Lionel", last_name: "M", address: "Paris")
laetitia = User.create!(email: "laetitia@friendy.com", password: "password", first_name: "Laetitia", last_name: "D", address: "Paris")

puts 'Creating friends...'
julie = Friend.create!(user: laura, name: "Julie", birth_date: "01/05/1999", gender: "female", address: "Avenue Denfert-Rochereau, Paris 14e Arrondissement, Île-de-France, France", description: "Very happy person, eager to meet new people. I like good beers and hanging out with my dog", price: 200)
david = Friend.create!(user: laetitia, name: "David", birth_date: "01/02/1987", gender: "male", address: "2 Broadway, Manhattan Community Board 2, New York, États-Unis d'Amérique", description: "Happy guy, ready to rock your world. I like burgers and soccer. I'd be delighted to make new friends!", price: 220)
tina = Friend.create!(user: laetitia, name: "Tina", birth_date: "01/05/1989", gender: "female", address: "Washington, District of Columbia, États-Unis d'Amérique", description: "Very smily person indeed, living life to the fullest. I like horseback riding and playing golf.", price: 290)
bob = Friend.create!(user: laetitia, name: "Bob", birth_date: "01/05/1962", gender: "male", address: "Phoenix, Arizona, États-Unis d'Amérique", description: "I might look scary but I'm very nice, trust me. I am looking for someone equally happy as I am.", price: 80)
lisa = Friend.create!(user: pierre, name: "Lisa", birth_date: "01/05/1980", gender: "female", address: "Place des Abbesses, Paris 18e Arrondissement, Île-de-France, France", description: "Hello, I'm Lisa! I live in Paris, and love to show my city to my new friends! There is so much to enjoy in the city of lights!", price: 150)
jenny = Friend.create!(user: pierre, name: "Jenny", birth_date: "01/05/1990", gender: "female", address: "Mairie du 20e arrondissement, Paris, Île-de-France, France", description: "Hello my name is Jenny! I'm an artist and would love to show you my paintings of Paris. Looking forward to meeting you!", price: 175)

puts 'Linking with photos...'
julie_pic = URI.open("https://images.unsplash.com/photo-1485218173291-62104d18e1c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
julie.photo.attach(io: julie_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
david_pic = URI.open("https://images.unsplash.com/photo-1474293507615-951863a0f942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
david.photo.attach(io: david_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tina_pic = URI.open("https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=687&q=80")
tina.photo.attach(io: tina_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
bob_pic = URI.open("https://images.unsplash.com/photo-1461938337379-4b537cd2db74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80")
bob.photo.attach(io: bob_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
lisa_pic = URI.open("https://images.unsplash.com/photo-1559763480-bec95f04ad10?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9")
lisa.photo.attach(io: lisa_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jenny_pic = URI.open("https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
jenny.photo.attach(io: jenny_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

pierre_pic = URI.open("https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
pierre.photo.attach(io: pierre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laura_pic = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
lionel_pic = URI.open("https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
lionel.photo.attach(io: lionel_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laetitia_pic = URI.open("https://images.unsplash.com/photo-1504703395950-b89145a5425b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laetitia.photo.attach(io: laetitia_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

julie.save!
david.save!
tina.save!
bob.save!
lisa.save!
jenny.save!

pierre.save!
laura.save!
lionel.save!
laetitia.save!

puts 'Creating bookings...'
Booking.create!(friend: jenny, user: laetitia, start_date: "26/12/2019", end_date: "28/12/2019")
Booking.create!(friend: lisa, user: laetitia, start_date: "15/09/2019", end_date: "19/09/2019")
Booking.create!(friend: tina, user: lionel, start_date: "15/12/2019", end_date: "16/12/2019")
Booking.create!(friend: tina, user: pierre, start_date: "15/08/2019", end_date: "16/08/2019")
Booking.create!(friend: david, user: laura, start_date: "15/03/2019", end_date: "19/03/2019")
