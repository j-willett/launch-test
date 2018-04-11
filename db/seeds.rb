# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
User.destroy_all

5.times do
  t = Team.create!(name: Faker::Team.name, sport: Faker::Team.sport)

  10.times do
    User.create(name: Faker::GameOfThrones.character, team_id: t.id)
  end
end
