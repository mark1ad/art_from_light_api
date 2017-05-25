# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  User.create(
    name: Faker::Name.name,
    password: 'Mark',
    address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
    profile_url: Faker::LoremPixel.image("175x100")
  )
end

User.create(
  name: "Mark",
  password: 'Mark',
  address: Faker::Address.city + ', ' + Faker::Address.state_abbr,
  profile_url: Faker::LoremPixel.image("200x250")
)


User.create(
  name: Faker::Name.name,
  password: 'Mark',
  address: Faker::Address.city + ', ' + Faker::Address.state_abbr,
  profile_url: Faker::LoremPixel.image("200x200")
)

3.times do
  User.create(
    name: Faker::Name.name,
    password: 'Mark',
    address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
    profile_url: Faker::LoremPixel.image("175x100")
  )
end
