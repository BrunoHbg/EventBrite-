require 'faker'

puts '***** Je nettoie les DB'
Event.destroy_all
Attendance.destroy_all
User.destroy_all

# seed user
puts '-> Je charge un jeu d\'essai User'
5.times do
  u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::ChuckNorris.fact, password: '123456')
  u.email = u.first_name + '_' + u.last_name + '@mail.com'
  u.save
end
puts 'Jeu d\'essai User avec 10 items'

# seed Event
puts '-> Je charge un jeu d\'essai Event'
20.times do
  Event.create!(
    title: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraph(3),
    start_date: Faker::Date.forward(90),
    duration: rand(1..30)*5,
    price: rand(1..1000),
    location: Faker::Address.community
    #admin: User.all.sample KO depuis la dernière update
  )
end
puts 'Jeu d\'essai Gossip avec 10 items'


puts 'Jeu d\'essai Attendance avec 10 items'
puts '***** Base de données chargée avec un seed ! Have a nive run.'

