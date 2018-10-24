# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  flat = Flat.new(
    name: Faker::HitchhikersGuideToTheGalaxy.specie,
    address: Faker::RickAndMorty.location,
    description: Faker::Hipster.sentence,
    price_per_night: Faker::Number.between(100, 500),
    number_of_guests: Faker::Number.between(1, 10)
  )
  flat.save!
end
