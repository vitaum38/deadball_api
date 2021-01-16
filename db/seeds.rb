# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Toronto Red Robins Players
Player.create(name: 'Cavan Baguio', shirt_name: 'Baguiu', birthdate: nil, base_avg: 0.242, era: 0.0, fielding: 0.984, main_hand: 'L', position: '2B')
Player.create(name: 'Randal Grichuchu', shirt_name: 'Grichuchu', birthdate: nil, base_avg: 0.247, era: 0.0, fielding: 0.995, main_hand: 'R', position: 'CF')
Player.create(name: 'Vladimir Warrior Jr', shirt_name: 'Warrior Jr', birthdate: nil, base_avg: 0.270, era: 0.0, fielding: 0.997, main_hand: 'R', position: '1B')
Player.create(name: 'Teoscar Hermanos', shirt_name: 'Hermanos', birthdate: nil, base_avg: 0.242, era: 0.0, fielding: 0.990, main_hand: 'R', position: 'RF')
Player.create(name: 'Lourdes Golimar Jr', shirt_name: 'Golimar Jr', birthdate: nil, base_avg: 0.274, era: 0.0, fielding: 0.999, main_hand: 'R', position: 'LF')
Player.create(name: 'Rowdy Tevez', shirt_name: 'Tevez', birthdate: nil, base_avg: 0.241, era: 0.0, fielding: 0.997, main_hand: 'L', position: 'DH')
Player.create(name: 'Travis Jaws', shirt_name: 'Jaws', birthdate: nil, base_avg: 0.242, era: 0.0, fielding: 0.980, main_hand: 'L', position: '3B')
Player.create(name: 'Danny Jensen', shirt_name: 'Jensen', birthdate: nil, base_avg: 0.209, era: 0.0, fielding: 0.982, main_hand: 'R', position: 'C')
Player.create(name: 'Joe Kanip', shirt_name: 'Kanip', birthdate: nil, base_avg: 0.270, era: 0.0, fielding: 0.993, main_hand: 'L', position: 'SS')

Player.create(name: 'Hyun Jin Ken', shirt_name: 'Ken', birthdate: nil, base_avg: 0.0, era: 2.92, fielding: 1, main_hand: 'L', position: 'P')

# Boston Blue Ties Players
Player.create(name: 'Alex Verruga', shirt_name: 'Verruga', birthdate: nil, base_avg: 0.283, era: 0.0, fielding: 0.997, main_hand: 'L', position: 'LF')
Player.create(name: 'Rafael Deves', shirt_name: 'Deves', birthdate: nil, base_avg: 0.277, era: 0.0, fielding: 0.998, main_hand: 'L', position: '3B')
Player.create(name: 'J.D. Martinhos', shirt_name: 'Martinhos', birthdate: nil, base_avg: 0.292, era: 0.0, fielding: 0.997, main_hand: 'R', position: 'DH')
Player.create(name: 'Xander Boggart', shirt_name: 'Boggart', birthdate: nil, base_avg: 0.288, era: 0.0, fielding: 0.996, main_hand: 'R', position: 'SS')
Player.create(name: 'Mitch Moreground', shirt_name: 'Moreground', birthdate: nil, base_avg: 0.253, era: 0.0, fielding: 0.990, main_hand: 'L', position: '1B')
Player.create(name: 'Christian Vascos', shirt_name: 'Vascos', birthdate: nil, base_avg: 0.257, era: 0.0, fielding: 0.987, main_hand: 'R', position: 'C')
Player.create(name: 'Kevin Column', shirt_name: 'Column', birthdate: nil, base_avg: 0.260, era: 0.0, fielding: 0.999, main_hand: 'R', position: 'RF')
Player.create(name: 'Jackie Chanley Jr', shirt_name: 'Brady Jr', birthdate: nil, base_avg: 0.236, era: 0.0, fielding: 0.989, main_hand: 'L', position: 'CF')
Player.create(name: 'José Serasa', shirt_name: 'Serasa', birthdate: nil, base_avg: 0.272, era: 0.0, fielding: 0.981, main_hand: 'R', position: '2B')

Player.create(name: 'Martin Esperez', shirt_name: 'Esperez', birthdate: nil, base_avg: 0.0, era: 4.58, fielding: 1, main_hand: 'L', position: 'P')

# Teams
Team.create(name: 'Toronto Red Robins', acronym: 'TRR', mock_lineup: [1, 2, 3, 4, 5, 6, 7, 8, 9])
Team.create(name: 'Boston Blue Ties', acronym: 'BBT', mock_lineup: [10, 11, 12, 13, 14, 15, 16, 17, 18])


# Special Players
Player.create(name: 'Jose Boludo', shirt_name: 'Boludo', birthdate: '23/04/2002', base_avg: 0.445, era: 0.0, fielding: 0.999, main_hand: 'R', position: '1B')
