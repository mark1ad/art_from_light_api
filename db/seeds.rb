# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: "Mark De May",
  username: "Mark",
  password: "Mark",
  address: Faker::Address.city + ', ' + Faker::Address.state_abbr,
  profile_url: 'http://i.imgur.com/GqF6FMvt.jpg'
)

Collection.create(
  title: 'Collection 1',
  description: 'This is Collection 1',
  user_id: 1
)

Collection.create(
  title: 'Collection 2',
  description: 'This is Collection 2',
  user_id: 1
)

Collection.create(
  title: 'Collection 3',
  description: 'Not my collection',
  user_id: 2
)

4.times do
  Picture.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    url: Faker::LoremPixel.image("500x600"),
    user_id: 1
  )
end

3.times do
  Picture.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    url: Faker::LoremPixel.image("600x400"),
    user_id: 1
  )
end


3.times do
  User.create(
    name: Faker::Name.name,
    password: 'Mark',
    address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
    profile_url: Faker::LoremPixel.image("175x100")
  )
end



User.create(
  name: Faker::Name.name,
  username: Faker::Name.name,
  password: 'Mark',
  address: Faker::Address.city + ', ' + Faker::Address.state_abbr,
  profile_url: Faker::LoremPixel.image("200x200")
)

3.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Name.name,
    password: 'Mark',
    address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
    profile_url: Faker::LoremPixel.image("175x100")
  )
end
