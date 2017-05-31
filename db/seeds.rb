# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create(name: "Nature")
Tag.create(name: "Macro")
Tag.create(name: "Still life")
Tag.create(name: "B&W")
Tag.create(name: "Flower")

User.create(
  name: "Mark De May",
  username: "Mark",
  password: "Mark",
  address: "Fort Collins, CO",
  profile_url: 'http://i.imgur.com/GqF6FMvt.jpg'
)

Collection.create(
  title: 'Collection 1',
  description: 'This is Collection 1',
  url: Faker::LoremPixel.image("200x200"),
  user_id: 1
)

Collection.create(
  title: 'Collection 2',
  description: 'This is Collection 2',
  url: Faker::LoremPixel.image("400x500"),
  user_id: 1
)

Collection.create(
  title: 'Collection 3',
  description: 'Not my collection',
  url: Faker::LoremPixel.image("200x200"),
  user_id: 2
)

Picture.create(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  url: Faker::LoremPixel.image("501x600"),
  user_id: 1
)
Picture.find(1).tags << Tag.find(1)
Picture.find(1).tags << Tag.find(2)

Picture.create(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  url: Faker::LoremPixel.image("502x600"),
  user_id: 1
)
Picture.find(2).tags << Tag.find(2)
Picture.find(2).tags << Tag.find(3)

Picture.create(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  url: Faker::LoremPixel.image("503x600"),
  user_id: 1
)
Picture.create(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  url: Faker::LoremPixel.image("504x600"),
  user_id: 1
)
Picture.create(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  url: Faker::LoremPixel.image("505x600"),
  user_id: 1
)
# 4.times do
#   Picture.create(
#     title: Faker::Lorem.sentence,
#     description: Faker::Lorem.sentence,
#     url: Faker::LoremPixel.image("500x600"),
#     user_id: 1
#   )
# end

Collection.find(1).pictures << Picture.find(1)
Collection.find(1).pictures << Picture.find(2)

# 3.times do
#   Picture.create(
#     title: Faker::Lorem.sentence,
#     description: Faker::Lorem.sentence,
#     url: Faker::LoremPixel.image("600x400"),
#     user_id: 1
#   )
# end


3.times do
  User.create(
    name: Faker::Name.name,
    password: 'Mark',
    address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
    profile_url: Faker::LoremPixel.image("175x100")
  )
end

3.times do
  Picture.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    url: Faker::LoremPixel.image("600x400"),
    user_id: 2
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
