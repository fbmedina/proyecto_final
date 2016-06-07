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

users = []
stores = []
stations = []

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

5.times do |u|
  users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: 1,
    gender: "female",
    remote_avatar_url: "http://lnx.cabinas.net/wp-content/uploads/2015/06/enviar-bellos-mensajes-por-el-celular-para-mujeres.jpg",
  )
end

Line.create([{name: "1"}, {name: "2"}, {name: "4"}, {name: "4a"}, {name: "5"}])

CSV.foreach(File.join(Rails.root, 'db', 'data', 'metros.csv'), headers: true, encoding: 'UTF-8') do |row|
  stations << Station.create(row.to_hash)
end

CSV.foreach(File.join(Rails.root, 'db', 'data', 'stationLines.csv'), headers: true, encoding: 'UTF-8') do |row|
  StationLine.create(row.to_hash)
end

5.times do |s|
  u = users[s]
  stores << Store.create(
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(5),
    phone_number: Faker::PhoneNumber.cell_phone,
    user: u,
    stations: stations.sample(5),
    recommended: [true, false].sample,
    remote_photo_url: "http://lorempixel.com/400/400/fashion",
    remote_cover_photo_url: "http://lorempixel.com/400/125/fashion"
  )
end

20.times do |p|
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    price: Faker::Number.between(3000, 10000),
    stock: Faker::Number.between(1, 10),
    store: stores.sample,
    best_seller: false,
    remote_photo_url: "http://lorempixel.com/400/400/fashion",
    tag_list: Faker::Hipster.words(4).map(&:inspect).join(', ')
  )
end

5.times do |p2|
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    price: Faker::Number.between(3000, 10000),
    stock: Faker::Number.between(1, 10),
    store: stores.sample,
    best_seller: true,
    remote_photo_url: "http://lorempixel.com/400/400/fashion",
    tag_list: Faker::Hipster.words(4).map(&:inspect).join(', ')
  )
end