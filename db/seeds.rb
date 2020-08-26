# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create(name: 'Toronto Red Robins', acronym: 'TRR', mock_lineup: [1])
Team.create(name: 'Toronto Red Robins', acronym: 'TRR', mock_lineup: [1])

Player.create(name: "José Boludo", shirt_name: "Bobo", birthdate: "2001-04-23", base_avg: 0.425, main_hand: "r")
Player.create(name: "Joe Pitching", shirt_name: "Pitching", birthdate: "1998-04-23", base_avg: 0.200, main_hand: "r")