# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ping_pong = Table.create(table_type: "Ping Pong")
foosball = Table.create(table_type: "Foosball")
shuffleboard = Table.create(table_type: "Shuffleboard")

one_pong = Game.create(table_id: ping_pong.id, num_players: 2, full: false)
two_pong = Game.create(table_id: ping_pong.id, num_players: 4, full: false)
one_foosball = Game.create(table_id: foosball.id, num_players: 2, full: false)
two_foosball = Game.create(table_id: foosball.id, num_players: 4, full: false)
one_shuffleboard = Game.create(table_id: shuffleboard.id, num_players: 2, full: false)
two_shuffleboard = Game.create(table_id: shuffleboard.id, num_players: 4, full: false)

max = Player.create(name: "Max")
norris = Player.create(name: "Norris")


