# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

$user_id = 0
$collection_id = 0
$picture_id = 0

Tag.create(name: "Nature")
Tag.create(name: "Macro")
Tag.create(name: "Still life")
Tag.create(name: "B&W")
Tag.create(name: "Flower")

# 10 pictures, 3 collections
def make_mark
  User.create(
    name: "Mark De May",
    username: "Mark",
    password: "Mark",
    address: "Fort Collins, CO",
    profile_url: 'https://i.imgur.com/GqF6FMvt.jpg'
  )
  $user_id = $user_id + 1

  mark_collection_1
  mark_collection_2
  mark_collection_3
  mark_other_pictures
end

# 2 Pictures
def mark_collection_1
  Collection.create(
    title: 'Flowers',
    description: 'Nature in Bloom',
    url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434877/final/081008_3177_inaeyd.png
',
    user_id: $user_id
  )
  $collection_id  = $collection_id + 1

  # Picture 1 - user 1, Collection 1
  Picture.create(
    title: "Flower #4521",
    description: "Denver Botanic Gardens",
    url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434877/final/081008_3177_inaeyd.png',
    user_id: $user_id
  )
  $picture_id = $picture_id + +1
  Collection.find($collection_id).pictures << Picture.find($picture_id)

  # Picture 2 - user 1, collection 1
  Picture.create(
    title: "Flower #3",
    description: "University of Colorado Andrews Arboretum",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434742/080415_1351_gd2dvx.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + +1
  Collection.find($collection_id).pictures << Picture.find($picture_id)

end

# 2 Pictures
def mark_collection_2

  # Collection 2 - user 1
  Collection.create(
    title: 'Nighthawks',
    description: 'The world after the sun has set',
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434834/090108_0098_12x18_print_e4enyj.png",
    user_id: 1
  )
  $collection_id = $collection_id + 1

  # Picture 4 - user 1, collection 2
  Picture.create(
    title: "Pay your money, take your chance",
    description: "Elitch Gardens",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434808/081018_3290_bw_wbduee.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1
  Collection.find($collection_id).pictures << Picture.find($picture_id)

  # Picture 5 - user 1, collection 2
  Picture.create(
    title: "Bridge",
    description: "Confluence Park",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434834/090108_0098_12x18_print_e4enyj.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1
  Collection.find($collection_id).pictures << Picture.find($picture_id)


end

# 4 pictures
def mark_other_pictures

  # Picture 3 - user 1, no collection
  Picture.create(
    title: "Flower #337",
    description: "Studio",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434750/080502_1522_bkgcih.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1

  Picture.create(
    title: "Rocket Man",
    description: "Flaming road trip mobile.",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496439621/IMG_1203_ajcffu.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1

  Picture.create(
    title: "Moth",
    description: "Butterfly Pavilion",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434785/080126_0171_kfnvzb.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1

  Picture.create(
    title: "Moth",
    description: "Butterfly Pavilion",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496603030/tu9haxutvpuxkbpwg3zr.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1

end

# 2 pictures
def mark_collection_3
  Collection.create(
    title: 'Time',
    description: '30-60 seconds of life',
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434876/final/091015_1034_ptvcgo.png",
    user_id: $user_id
  )
  $collection_id = $collection_id + 1

  Picture.create(
    title: "Fall",
    description: "Old Town, Fort Collins",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434873/final/091003_0906_i0ipbq.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1
  Collection.find($collection_id).pictures << Picture.find($picture_id)

  Picture.create(
    title: "Rock #1",
    description: "Boulder Creek",
    url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496434861/090821_0731_j2apfd.png",
    user_id: $user_id
  )
  $picture_id = $picture_id + 1
  Collection.find($collection_id).pictures << Picture.find($picture_id)
end

make_mark

def make_stan
  # 2 pictures
  def stan_collection_1
    Collection.create(
      title: 'Light',
      description: '',
      url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091118_1263_tw22ka.png',
      user_id: $user_id
    )
    $collection_id = $collection_id + 1

    # Picture 1 - user 1, Collection 1
    Picture.create(
      title: "Glass",
      description: "",
      url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091118_1263_tw22ka.png',
      user_id: 2
    )
    $picture_id = $picture_id + 1
    Collection.find($collection_id).pictures << Picture.find($picture_id)

    # Picture 2 - user 1, collection 1
    Picture.create(
      title: "Flow",
      description: "",
      url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091202_1389_crop_paopbq.png",
      user_id: 2
    )
    $picture_id = $picture_id + 1
    Collection.find($collection_id).pictures << Picture.find($picture_id)

  end


  User.create(
    name: "Stan Smith",
    username: "Stan",
    password: "Stan",
    address: "Langley Falls, Virginia",
    profile_url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434856/081018_3295_oqiqrr.png'
  )
  $user_id = $user_id + 1

  stan_collection_1
end

make_stan


def make_cyril

  User.create(
    name: "Cyril Figgis",
    username: "Cyril",
    password: "Cyril",
    address: "New York, NY",
    profile_url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434771/080330_1101_blocmb.png'
  )
  $user_id = $user_id + 1

  Picture.create(
    title: "Solace",
    description: "",
    url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496434732/080222_0553_x88uvb.png',
    user_id: $user_id
  )
  $picture_id = $picture_id + 1
end

make_cyril

# # 2 pictures
# def stan_collection_1
#   Collection.create(
#     title: 'Light',
#     description: '',
#     url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091118_1263_tw22ka.png',
#     user_id: 1
#   )
#
#   # Picture 1 - user 1, Collection 1
#   Picture.create(
#     title: "Glass",
#     description: "",
#     url: 'https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091118_1263_tw22ka.png',
#     user_id: 1
#   )
#   Collection.find(4).pictures << Picture.find(11)
#
#   # Picture 2 - user 1, collection 1
#   Picture.create(
#     title: "Flow",
#     description: "",
#     url: "https://res.cloudinary.com/di22i0ckg/image/upload/v1496603954/091202_1389_crop_paopbq.png",
#     user_id: 1
#   )
#   Collection.find(4).pictures << Picture.find(12)
#
# end


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


# 3.times do
#   User.create(
#     name: Faker::Name.name,
#     password: 'Mark',
#     address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
#     profile_url: Faker::LoremPixel.image("175x100")
#   )
# end
#
# 3.times do
#   Picture.create(
#     title: Faker::Lorem.sentence,
#     description: Faker::Lorem.sentence,
#     url: Faker::LoremPixel.image("600x400"),
#     user_id: 2
#   )
# end
#
#
# User.create(
#   name: Faker::Name.name,
#   username: Faker::Name.name,
#   password: 'Mark',
#   address: Faker::Address.city + ', ' + Faker::Address.state_abbr,
#   profile_url: Faker::LoremPixel.image("200x200")
# )
#
# 3.times do
#   User.create(
#     name: Faker::Name.name,
#     username: Faker::Name.name,
#     password: 'Mark',
#     address: Faker::Address.city + ' ' + Faker::Address.state_abbr,
#     profile_url: Faker::LoremPixel.image("175x100")
#   )
# end
