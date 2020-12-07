# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Game.destroy_all



# 15.times {User.create(name: Faker::Name.name) }

30.times {Game.create(score: Faker::Number.within(range: 400..1300), user_id: Faker::Number.within(range: 338..367), scoreboard_id: 1)}