# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Line.destroy_all
Station.destroy_all
Product.destroy_all
Store.destroy_all
Wishlist.destroy_all
User.destroy_all

stations = []
profile_avatar = ["default_profile_avatar1", "default_profile_avatar2", "default_profile_avatar3","default_profile_avatar4","default_profile_avatar5","default_profile_avatar6"]

Wishlist.create(
  name: "Lo Amo",
  icon: "love_it.svg"
  )

Wishlist.create(
  name: "Lo Odio",
  icon: "hate_it.svg"
  )

Wishlist.create(
  name: "Lo Tengo",
  icon: "have_it.svg"
  )

22.times do |u|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: 1,
    gender: "female",
    remote_avatar_url: profile_avatar.sample,
  )
end

Line.create([{name: "1", alias: 'red'}, {name: "2", alias: 'yellow'}, {name: "4", alias: 'blue'}, {name: "4a", alias: 'light-blue'}, {name: "5", alias: 'green'}])

CSV.foreach(File.join(Rails.root, 'db', 'data', 'metros.csv'), headers: true, encoding: 'UTF-8') do |row|
  stations << Station.create(row.to_hash)
end

CSV.foreach(File.join(Rails.root, 'db', 'data', 'stationLines.csv'), headers: true, encoding: 'UTF-8') do |row|
  StationLine.create(row.to_hash)
end

Store.create(
    {
      name: "Strawberry Bazar",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0021_1-Straberry-Bazar.png",
      cover_photo: "store_cover_photo_0021_1-Straberry-Bazar.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 1,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Solo Para Mi",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0020_2-Solo-Para-Mi.png",
      cover_photo: "store_cover_photo_0020_2-Solo-Para-Mi.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 2,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Positivo",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0019_3-Positivo.png",
      cover_photo: "store_cover_photo_0019_3-Positivo.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 3,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Violeta Mi Tienda",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0018_4-Violeta-Mi-Tienda.png",
      cover_photo: "store_cover_photo_0018_4-Violeta-Mi-Tienda.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 4,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Tu Regalo Chic",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0017_5-Tu-Regalo-Chic",
      cover_photo: "store_cover_photo_0017_5-Tu-Regalo-Chic.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 5,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Onitas",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0016_6-Onitas",
      cover_photo: "store_cover_photo_0016_6-Onitas.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 6,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Bohemian Accessories",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0015_7-Bohemian-Accessories.png",
      cover_photo: "store_cover_photo_0015_7-Bohemian-Accessories.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 7,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Conini Bazar",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0014_8-Conini-Bazar.png",
      cover_photo: "store_cover_photo_0014_8-Conini-Bazar-copia.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 8,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Dango Family",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0013_9-Dango-Family.png",
      cover_photo: "store_cover_photo_0013_9-Dango-Family.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 9,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Ufisa Pink Shop",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0012_10-Ufisa-Pink-Shop.png",
      cover_photo: "store_cover_photo_0012_10-Ufisa-Pink-Shop.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 10,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Pikaboo",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0011_11-Pikaboo.png",
      cover_photo: "store_cover_photo_0011_11-Pikaboo.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 11,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Embasémonos",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0010_12-Embasémonos.png",
      cover_photo: "store_cover_photo_0010_12-Embasémonos.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 12,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Mochilas de Lana",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0009_13-Mochilas-de-Lana.png",
      cover_photo: "store_cover_photo_0009_13-Mochilas-de-Lana.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 13,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "The Culto Store",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0008_14-The-Culto-Store.png",
      cover_photo: "store_cover_photo_0008_14-The-Culto-Store.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 14,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Hydra",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0007_15-Hydra.png",
      cover_photo: "store_cover_photo_0007_15-Hydra.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 15,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Ruby Tuesday",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0006_16-Ruby-Tuesday.png",
      cover_photo: "store_cover_photo_0006_16-Ruby-Tuesday.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 16,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Külko",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0005_17-Külko.png",
      cover_photo: "store_cover_photo_0005_17-Jülko.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 17,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Morenaa",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0004_18-Morenaa.png",
      cover_photo: "store_cover_photo_0004_18-Morenaa.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 18,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Tienda MCP",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0003_19-Tienda-MCP.png",
      cover_photo: "store_cover_photo_0003_19-Tienda-MCP.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 19,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Sharlie",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0002_20-Sharlie.png",
      cover_photo: "store_cover_photo_0002_20-Sharlie.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 20,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Frida Creaciones",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0001_21-Frida-Creaciones.png",
      cover_photo: "store_cover_photo_0001_21-Frida-Creaciones.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 21,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "La Hacedora",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0000_La-Hacedora.png",
      cover_photo: "store_cover_photo_0000_22-La-Hacedora.png",
      facebook_link: Faker::Internet.url("facebook.com"),
      instagram_link: Faker::Internet.url("instagram.com"),
      user_id: 22,
      phone_number: Faker::Number.number(7),
      recommended: [true, false].sample,
      stations: stations.sample(5)
    }
  )