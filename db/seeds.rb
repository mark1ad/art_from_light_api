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
  title: 'Flowers',
  description: 'Nature in Bloom',
  url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434877/081008_3177_inaeyd.png',
  user_id: 1
)


Picture.create(
  title: "Flower #4521",
  description: "Denver Botanic Gardens",
  url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434877/081008_3177_inaeyd.png',
  user_id: 1
)
Picture.find(1).tags << Tag.find(1)
Picture.find(1).tags << Tag.find(5)
Collection.find(1).pictures << Picture.find(1)


Picture.create(
  title: "Flower #3",
  description: "University of Colorado Andrews Arboretum",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434742/080415_1351_gd2dvx.png",
  user_id: 1
)
Picture.find(2).tags << Tag.find(1)
Picture.find(2).tags << Tag.find(5)
Collection.find(1).pictures << Picture.find(2)

Picture.create(
  title: "Flower #337",
  description: "Studio",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434750/080502_1522_bkgcih.png",
  user_id: 1
)
Picture.find(2).tags << Tag.find(1)
Picture.find(2).tags << Tag.find(5)

Collection.create(
  title: 'Nighthawks',
  description: 'The world after the sun has set',
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434834/090108_0098_12x18_print_e4enyj.png",
  user_id: 1
)

Picture.create(
  title: "Pay your money, take your chance",
  description: "Elitch Gardens",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434808/081018_3290_bw_wbduee.png",
  user_id: 1
)
Picture.find(2).tags << Tag.find(4)
Collection.find(2).pictures << Picture.find(4)


Picture.create(
  title: "Bridge",
  description: "Confluence Park",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434834/090108_0098_12x18_print_e4enyj.png",
  user_id: 1
)
Picture.find(2).tags << Tag.find(4)
Collection.find(2).pictures << Picture.find(5)


Collection.create(
  title: 'Time',
  description: '30-60 seconds of life',
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434873/091003_0906_i0ipbq.png",
  user_id: 1
)

Picture.create(
  title: "Fall",
  description: "Old Town, Fort Collins",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434873/091003_0906_i0ipbq.png",
  user_id: 1
)
Picture.find(6).tags << Tag.find(4)
Collection.find(3).pictures << Picture.find(6)

Picture.create(
  title: "Rock #1",
  description: "Boulder Creek",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496434861/090821_0731_j2apfd.png",
  user_id: 1
)
Picture.find(7).tags << Tag.find(4)
Collection.find(3).pictures << Picture.find(7)



Picture.create(
  title: "Rocket Man",
  description: "Flaming road trip mobile.",
  url: "http://res.cloudinary.com/di22i0ckg/image/upload/v1496439621/IMG_1203_ajcffu.png",
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
