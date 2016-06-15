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
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 1,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Solo Para Mi",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0020_2-Solo-Para-Mi.png",
      cover_photo: "store_cover_photo_0020_2-Solo-Para-Mi.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 2,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Positivo",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0019_3-Positivo.png",
      cover_photo: "store_cover_photo_0019_3-Positivo.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 3,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Violeta Mi Tienda",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0018_4-Violeta-Mi-Tienda.png",
      cover_photo: "store_cover_photo_0018_4-Violeta-Mi-Tienda.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 4,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Tu Regalo Chic",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0017_5-Tu-Regalo-Chic",
      cover_photo: "store_cover_photo_0017_5-Tu-Regalo-Chic.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 5,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Onitas",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0016_6-Onitas",
      cover_photo: "store_cover_photo_0016_6-Onitas.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 6,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Bohemian Accessories",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0015_7-Bohemian-Accessories.png",
      cover_photo: "store_cover_photo_0015_7-Bohemian-Accessories.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 7,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Conini Bazar",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0014_8-Conini-Bazar.png",
      cover_photo: "store_cover_photo_0014_8-Conini-Bazar-copia.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 8,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Dango Family",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0013_9-Dango-Family.png",
      cover_photo: "store_cover_photo_0013_9-Dango-Family.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 9,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Ufisa Pink Shop",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0012_10-Ufisa-Pink-Shop.png",
      cover_photo: "store_cover_photo_0012_10-Ufisa-Pink-Shop.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 10,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Pikaboo",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0011_11-Pikaboo.png",
      cover_photo: "store_cover_photo_0011_11-Pikaboo.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 11,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Embasémonos",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0010_12-Embasémonos.png",
      cover_photo: "store_cover_photo_0010_12-Embasémonos.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 12,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Mochilas de Lana",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0009_13-Mochilas-de-Lana.png",
      cover_photo: "store_cover_photo_0009_13-Mochilas-de-Lana.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 13,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "The Culto Store",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0008_14-The-Culto-Store.png",
      cover_photo: "store_cover_photo_0008_14-The-Culto-Store.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 14,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Hydra",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0007_15-Hydra.png",
      cover_photo: "store_cover_photo_0007_15-Hydra.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 15,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Ruby Tuesday",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0006_16-Ruby-Tuesday.png",
      cover_photo: "store_cover_photo_0006_16-Ruby-Tuesday.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 16,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Külko",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0005_17-Külko.png",
      cover_photo: "store_cover_photo_0005_17-Jülko.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 17,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Morenaa",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0004_18-Morenaa.png",
      cover_photo: "store_cover_photo_0004_18-Morenaa.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 18,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Tienda MCP",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0003_19-Tienda-MCP.png",
      cover_photo: "store_cover_photo_0003_19-Tienda-MCP.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 19,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Sharlie",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0002_20-Sharlie.png",
      cover_photo: "store_cover_photo_0002_20-Sharlie.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 20,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "Frida Creaciones",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0001_21-Frida-Creaciones.png",
      cover_photo: "store_cover_photo_0001_21-Frida-Creaciones.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 21,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    },
    {
      name: "La Hacedora",
      description: Faker::Lorem.sentence(10),
      photo: "store_photo_0000_La-Hacedora.png",
      cover_photo: "store_cover_photo_0000_22-La-Hacedora.png",
      facebook_link: [nil, Faker::Internet.url("facebook.com")].sample,
      instagram_link: [nil, Faker::Internet.url("instagram.com")].sample,
      user_id: 22,
      phone_number: Faker::Number.number(7),
      recommended: [true, false, false].sample,
      stations: stations.sample(5)
    }
  )

Product.create(
    {
      name: "Galaxy Bows",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0000_Galaxy-Bows.png",
      price: 1000,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "bowtie, humita, ribbon, ropa, accesorio, universo, colores, estrellas, universo, galaxia, hipster"
    },
    {
      name: "Taza Pusheen",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0001_Taza-Pusheen.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "taza, loza, gato, pusheen, globo, tierno, fluffy, colores, gris, happy, animales, cerámica"
    },
    {
      name: "Peluditos con Gatos Rosado",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0002_Peludito-Gatos-Rosado.png",
      price: 7500,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "ropa, peludito, peludo, rosado, gato, fluffy, chaleco, suéter, animales"
    },
    {
      name: "Tattoo Choker",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0003_Tattoo-Choker.png",
      price: 700,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "choker, collar, Fran, negro, 90s, accesorio, plástico"
    },
    {
      name: "Set de Calcetines con Gatos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0004_Set-Calcetines-Gatos.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "ropa, calcetines, gato, tierno, hipster, gatos con ropa, animales"
    },
    {
      name: "Cuaderno Arnold",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0005_Cuaderno-Arnold.png",
      price: 3500,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "cuaderno, papelería, Arnold, Hey Arnold, Oye Arnold, corazón, love, azul, amarillo"
    },
    {
      name: "Bolso Frida Kahlo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0006_Bolso-Frida-Kahlo.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "bolso, cartera, bolsos y carteras, México, Frida, Frida Kahlo, flores, colores"
    },
    {
      name: "Bolso Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_1_0007_Bolso-Gato.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 1,
      best_seller: [true, false, false].sample,
      tag_list: "bolso, cartera, bolsos y carteras, gato, flores, flower crown, corona, crown, universo, estrellas, miau, galaxia"
    },
    {
      name: "Collar con Detalles Morados",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0000_Collar-Detalles-Morados.pngs",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, flores, morado, metálico, gris, collar largo, metal"
    },
    {
      name: "Collar Colgante Búhos Plateado",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0001_Colgante-Buhos-Plateado.png",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "collar, colgante, búhos, búho, gris, plateado, tierno, accesorio,collar largo, envejecido, metal"
    },
    {
      name: "Anillo con Piedras Rojizas",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0002_Anillo-Piedras-Rojizas.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "anillo, accesorio, plateado, gris, flores, rojo, rojizo"
    },
    {
      name: "Aros Hojas Dorados",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0003_Aros-Hojas-Dorados.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "aros, accesorio, dorado, hoja, hojas, aros grandes, amarillo"
    },
    {
      name: "Pulsera Plateada con Mano de Fátima",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0004_Pulsera-Plateada.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "pulsera, accesorio, plateado, gris, corazón, llave, trébol, lucky, lucky charm, religioso, mano de Fátima",
    },
    {
      name: "Aros Espiral Dorados",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_2_0005_Aros-Espiral-Dorados.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 2,
      best_seller: [true, false, false].sample,
      tag_list: "aros, accesorio, dorado, amarillo, hoops, aros grandes, espiral"
    },
    {
      name: "Gorro Totoro",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0000_Gorro-Totoro.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "gorro, lana, abrigo, Totoro, gris, blanco, negro, ponpon, orejitas, crochet, tejido, hecho a mano, handmade, anime, Hayao Miyazaki, Miyazaki, Mi Vecino Totoro, My Neightbour Totoro"
    },
    {
      name: "Anillo Meow Dorado",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0001_Anillo-Meow-Dorado.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "gato, anillo, accesorio, dorado, amarillo, miau, animales"
    },
    {
      name: "Anillo Meow Plateado",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0002_Anillo-Meow-Plateado.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "anillo, gato, accesorio, gris, plateado, tierno, miau, animales"
    },
    {
      name: "Aros Meow",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0003_Aros-Meow.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "aros, aros pegados, gato, negro, amarillo, tierno, porcelana fría, porcelana, accesorio, hecho a mano, animales, miau, cola"
    },
    {
      name: "Aros Jake",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0004_Aros-Jake.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "aros, aros pegados, accesorio, Jake, Hora de Aventura, Adventure Time, amarillo, Jake and Finn, perro, animales, porcelana fría"
    },
    {
      name: "Llavero Meow",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0005_Llavero-Meow.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, llave, gato, gris, happy, keychan, animales, porcelana fría"
    },
    {
      name: "Aros Frida Kahlo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_3_0006_Aros-Frida-Kahlo.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 3,
      best_seller: [true, false, false].sample,
      tag_list: "aros, aros pegados, Frida, Frida Kahlo, Kahlo, flores, flower crown, pretty, colores, porcelana fría, hecho a mano, handmade, México"
    },
    {
      name: "Poncho Tejido con Detalle Floral",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_4_0000_Poncho-Tejido-Detalle-Floral.png",
      price: 11000,
      stock: Number.between(1, 15),
      store_id: 4,
      best_seller: [true, false, false].sample,
      tag_list: "ropa, poncho, tejido, telar, flor, blanco, lana, cuello redondo"
    },
    {
      name: "Vestido Azul Marino con Detalles Florales",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_4_0001_Vestido-Azul-Marino-Detalles-Florales.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 4,
      best_seller: [true, false, false].sample,
      tag_list: "vestido, azul, ropa, flores, talla s, cuello redondo"
    },
    {
      name: "Collar Inspirado en África",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_4_0002_Collar-Inspirado-en-África-3.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 4,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar grande, accesorio, colores, borlas, estilo África, metal, África, hilo, piedras"
    },
    {
      name: "Collar Inspirado en África",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_4_0003_Collar-Inspirado-en-África-2.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 4,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, collar grande, piedras, estilo África, naranjo, verde"
    },
    {
      name: "Collar Inspirado en África",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_4_0004_Collar-Inspirado-en-África-1.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 4,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, collar grande, piedras, estilo África, naranjo, dorado, metal, borlas, hilo"
    },
    {
      name: "Llavero Príncipe Sapo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_5_0000_Llaver-Príncipe-Sapo.png",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 5,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, keychan, sapo, príncipe sapo, corona, corazón, verde, happy, hecho a mano, handmade, porcelana fría, animales"
    },
    {
      name: "Llavero Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_5_0001_Llavero-Gato.png",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 5,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, gato, keychan, blanco, porcelana fría, estrellas, hecho a mano, handmade, animales"
    },
    {
      name: "Llavero Profesión Personalizable",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_5_0002_Llavero-Profesión-Personalizable.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 5,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, keychan, iphone, diente, dentista, porcelana fría, happy, hecho a mano, handmade, cepillo de dientes, pasta de dientes, pepe, personalizado"
    },
    {
      name: "Llavero Pareja Personalizable",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_5_0003_Llavero-Pareja-Personalizable.png",
      price: 7000,
      stock: Number.between(1, 15),
      store_id: 5,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, keychan, porcelana fría, hecho a mano, handmade, pareja, amor, corazón, rosado, mujer, hombre, bailarina, deportista, heteronormativo"
    },
    {
      name: "Muñeco Selk'nam",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_6_0000_Muñeco-Selk'nam.png",
      price: 14000,
      stock: Number.between(1, 15),
      store_id: 6,
      best_seller: [true, false, false].sample,
      tag_list: "onitas, peluche, plushie, cultura chilena, muñeco, Selk’nam, muñeco Selk’nam, Selknam, muñeco Selknam, patrimonio chileno, blanco, rojo"
    },
    {
      name: "Muñeca Violeta Parra",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_6_0001_Muñeca-Violeta-Parra.png",
      price: 14000,
      stock: Number.between(1, 15),
      store_id: 6,
      best_seller: [true, false, false].sample,
      tag_list: "onitas, peluche, plushie, cultura chilena, muñeca, Violeta, Violeta Parra, guitarra, muñeca Violeta Parra, música"
    },
    {
      name: "Muñeco Pingüino de Humboldt",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_6_0002_Muñeco-Pingüino-de-Humboldt.png",
      price: 14000,
      stock: Number.between(1, 15),
      store_id: 6,
      best_seller: [true, false, false].sample,
      tag_list: "onitas, peluche, plushie, cultura chilena, pingüino, pingüino, pinguino de Humboldt, peluche pinguino, fauna, animales, fauna chilena, blanco, negro, animales"
    },
    {
      name: "Muñeco Zorro Chilote",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_6_0003_Muñeco-Zorro-Chilote.png",
      price: 14000,
      stock: Number.between(1, 15),
      store_id: 6,
      best_seller: [true, false, false].sample,
      tag_list: "onitas, peluche, plushie, cultura chilena, fauna chilena, animales, zorro, zorro chilote, gris, peluche zorro, peluche zorro chilote, animales"
    },
    {
      name: "Choker Crochet con Monedas",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0000_Choker-Crochet-con-Monedas.png",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, choker, crochet, monedas, hilo, blanco, metal"
    },
    {
      name: "Collar Doble con Elefante",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0001_Collar-Doble-Elefante.png",
      price: 3000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, morado, metal, piedras, bronce, elefante, mostacillas, collar largo, animales"
    },
    {
      name: "Collar Tonos Otoñales",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0002_Collar-Tonos-Otoñales.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, collar largo, bronce, rojo, blanco, metal"
    },
    {
      name: "Collar Doble con Mano de Fátima y Piedra Onix",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0003_Collar-Doble-Mano-Fátima-Piedra-Onix.png",
      price: 5000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar largo, metal, plateado, gris, rojo, mano de Fátima, piedras, piedra, piedra onix, onix, negro, accesorio"
    },
    {
      name: "Choker Velvet con Piedra Luna",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0004_Choker-Piedra-Luna.png",
      price: 2000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, choker, negro, piedras, piedra, piedra luna, blanco, accesorio"
    },
    {
      name: "Collar con Piedras de Cuarzo y Árbol de la Vida",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0005_Collar-Piedras-Cuarzo-Árbol-de-la-Vida.png",
      price: 6000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, metal, plateado, árbol, árbol de la vida, cuarzo, piedras, piedra, blanco"
    },
    {
      name: "Collar con Plumas Envejecido",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_7_0006_Collar-Plumas-Envejecido.png",
      price: 6000,
      stock: Number.between(1, 15),
      store_id: 7,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, plumas, metal, envejecido, monedas, verde agua"
    },
    {
      name: "Crop Top Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_8_0000_Polera-Gato.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 8,
      best_seller: [true, false, false].sample,
      tag_list: "polera, ropa, gato, playa, beach, crema, pelota, colores, crop top, verano, manga corta, animales"
    },
    {
      name: "Polera Flores",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_8_0001_Polera-Flores.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 8,
      best_seller: [true, false, false].sample,
      tag_list: "polera, ropa, manga corta, celeste, flores, colores, verano"
    },
    {
      name: "Crop Top Pájaro",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_8_0002_Polera-Pájaro.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 8,
      best_seller: [true, false, false].sample,
      tag_list: "polera, ropa, colores, manga corta, pájaro, naranjo, azul, verde, gris, corazón, llave, crop top, animales"
    },
    {
      name: "Crop Top Elefante Feliz",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_8_0003_Polera-Elefante.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 8,
      best_seller: [true, false, false].sample,
      tag_list: "polera, manga corta, verano, ropa, elefante, corazón, corazones, azul, celeste, colores, happy, love, crop top, animales"
    },
    {
      name: "Monedero Gatito",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0000_Monedero-Gatito.png",
      price: 3500,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "monedero, gato, blanco, orejitas, útil, azul, gris, big eyes, miau, animales"
    },
    {
      name: "Lápices Corona",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0001_Lápices-Corona.png",
      price: 1000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "lápices, papelería, colores, corona, perla, forever, royalty, lápiz"
    },
    {
      name: "Lápices Gatito",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0002_Lápices-Gatitos.png",
      price: 1000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "“lápiz, lápices, gatitos, papelería, kawaii, cafe, blanco, rosado, bowtie, hairbow, animales"
    },
    {
      name: "Lápices Monster con Bigotes",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0003_Lápices-Monster-Bigotes.png",
      price: 1000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "lápiz, lápices, monster, monstruo, bigote, moustache, ojos, i moustache you a question, negro, blanco, colores, celeste, rosado, zebra, rayas, bigote"
    },
    {
      name: "Cosmetiquero Panda Plush",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0004_Cosmetiquero-Panda-Plush.png",
      price: 3500,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "cosmetiquero, estuche, fluffy, ovo, panda, orejitas, blanco, negro, plush, tierno, animales, kawaii"
    },
    {
      name: "Estuche Gatitos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0005_Estuche-Gatitos-3.png",
      price: 6000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "estuche, colores, gato, azul, lápices, lápiz, eco cuero, cats kingdom, animales"
    },
    {
      name: "Estuche Gatitos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0006_Estuche-Gatitos-2.png",
      price: 6000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "estuche, colores, gato, lápices, lápiz, eco cuero, cats kingdom, miau, animales"
    },
    {
      name: "Estuche Gatitos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_9_0007_Estuche-Gatitos.png",
      price: 6000,
      stock: Number.between(1, 15),
      store_id: 9,
      best_seller: [true, false, false].sample,
      tag_list: "estuche, colores, gato, lápices, lápiz, eco cuero, cats kingdom, miau, gatos con ropa, animales"
    },
    {
      name: "Billetera Amarilla Gatos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0000_Billetera-Amarilla-Gato.png",
      price: 11000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "billetera, wallet, monedero, cuero, gato, crema, tierno, borla, cute kitten, colores, amarillo, animales, elegante, fancy"
    },
    {
      name: "Billetera Morada",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0001_Billetera-Morada.png",
      price: 11000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "billetera, wallet, monedero, morado, cuero, borla, elegante, bags garden"
    },
    {
      name: "Polerón Hámster",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0002_Polerón-Hámster.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "polerón, ropa, hámster, animales, almendra, crema, naranjo, fluffy, tierno, strawberry, frutilla, happy, oversized, baby, big eyes, cuello redondo"
    },
    {
      name: "Polerón Conejo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0003_Polerón-Conejo.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "polerón, ropa, conejo, animales, zanahoria, hairbow, fluffy, tierno, blanco, azul, big eyes, cuello redondo"
    },
    {
      name: "Polerón Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0004_Polerón-Gato-3.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "polero, ropa, blanco, gato, pez, animales, agua, corazón, love, kiss, tierno, naranjo, azul, cuello redondo"
    },
    {
      name: "Polerón Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0005_Polerón-Gato-2.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "polerón, ropa, verde, crema, silla, gato, pájaro, animales, gatos con ropa, comida, ratón, pastel, cuello redondo"
    },
    {
      name: "Polerón Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_10_0006_Polerón-Gato.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 10,
      best_seller: [true, false, false].sample,
      tag_list: "polerón, ropa, verde, crema, silla, gato, pájaro, animales, gatos con ropa, comida, ratón, pastel, cuello redondo"
    },
    {
      name: "Muñeco Capitán América",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_11_0000_Muñeco-Capitán-América.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 11,
      best_seller: [true, false, false].sample,
      tag_list: "peluche, plushie, capitán, cap, Capitán América, peluche Capitán América, vengadores, avengers, marvel, marvel comics, mcu, Steve Rogers, estrella, rojo, azul, blanco"
    },
    {
      name: "Muñeco Minion Súperman",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_11_0001_Muñeco-Minion-Superman.png",
      price: 11000,
      stock: Number.between(1, 15),
      store_id: 11,
      best_seller: [true, false, false].sample,
      tag_list: "peluche, plushie, minion, minions, Superman, dreamworks, peluche minion, peluche minion superman, disfraz, amarillo, rojo, azul, dc, dc comics, disfrazado, disfraz"
    },
    {
      name: "Muñeca Anna",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_11_0002_Muñeca-Ana.png",
      price: 12000,
      stock: Number.between(1, 15),
      store_id: 11,
      best_seller: [true, false, false].sample,
      tag_list: "muñeca, peluche, plushie, Anna, peluche Anna, Frozen, Disney, Arendelle, Let It Go, princesa, rosado, naranjo"
    },
    {
      name: "Muñeco Spiderman",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_11_0003_Muñeco-Spiderman.png",
      price: 8000,
      stock: Number.between(1, 15),
      store_id: 11,
      best_seller: [true, false, false].sample,
      tag_list: "muñeco, peluche, plushie, Spiderman, Spider man, Spidey, marvel, marvel comics, Peter Parker, rojo, azul, Hombre Araña"
    },
    {
      name: "Dulces Boo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0000_Dulces-Boo.png",
      price: 4500,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "dulces, Boo, kitty, gatito, Monsters Inc, pixar, Disney, monstruo, frasco, morado, comida"
    },
    {
      name: "Dulces Psyduck",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0001_Dulces-Cyberduck.png",
      price: 4000,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "Psyduck, pato, animales, Pokemón, amarillo, dulces, frasco, comida"
    },
    {
      name: "Galletas Cookie Monster",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0002_Galletas-Cookie-Monster.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "dulces, galleta, frasco, monstruo, cookie, Cookie Monster, Sesame Street, Plaza Sésamo, azul, comida"
    },
    {
      name: "Pastillas Para la Buena Suerte de Eugene",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0003_Pastillas-para-la-Buena-SUerte-Eugene.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "frasco, pastillas, dulces, comida, eugene, naranjo, suerte, lucky, lucky charm, trébol, Hey Arnold, Arnold, Oye Arnold, buena suerte"
    },
    {
      name: "Pastillas para la Memora de Dory",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0004_Pastillas-para-la-Memoria-Dory.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "dulces, comida, frasco, Dory, dulces, Finding Dory, Finding Nemo, Buscando a Nemo, Buscando a Dory, memoria, mala memoria, Pixar, Disney, amarillo, azul, pez, animales, pastillas para la memoria"
    },
    {
      name: "Pastillas de Poder de Goku",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_12_0005_Pastillas-de-Poder-Goku.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 12,
      best_seller: [true, false, false].sample,
      tag_list: "frasco, pastillas, comida, Goku, pastillas de poder, dulces, sayayin, Dragon Ball, estrellas, naranjo"
    },
    {
      name: "Mochila de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0000_Bati-Mochila-de-Lana.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "mochila, backpack, bolsos y carteras, tejido, lana, crochet, Batman, batimochila, negro, amarillo, gris, DC, DC comics, bolsos y carteras, batiseñal, bat signal"
    },
    {
      name: "Mochila de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0001_Mochila-de-Lana-2.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "mochila, backpack, bolsos y carteras, tejido, lana, crochet, bolsos y carteras, blanco, rosado, hecho a mano, handmade"
    },
    {
      name: "Mochila de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0002_Mochila-de-Lana.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "mochila, backpack, bolsos y carteras, tejido, lana, crochet, amarillo, verde, rojo, hecho a mano, handmade"
    },
    {
      name: "Billetera de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0003_Billetera-de-Lana.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "billetera, wallet, lana, crochet, tejido, hecho a mano, handmade, monedero, azul, rojo"
    },
    {
      name: "Monedero de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0004_Monedero-de-Lana.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "billetera, wallet, monedero, crochet, lana, tejido, colores, hecho a mano, handmade, negro"
    },
    {
      name: "Monedero Triangular de Lana",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_13_0005_Monedero-Triangular-de-Lana.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 13,
      best_seller: [true, false, false].sample,
      tag_list: "billetera, monedero, crochet, tejido, lana, naranjo, azul, celeste, handmade, hecho a mano"
    },
    {
      name: "Snitch Dorada",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0000_Collar-Snitch-Dorada.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, snitch, dorado, golden snitch, snitch dorada, Harry Potter, HP, alas, envejecido, collar largo"
    },
    {
      name: "Collar Casa Stark",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0001_Collar-Casa-Stark.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, accesorio, collar largo, plateado, gris, lobo, animales, metal, GoT, Game of Thrones, Stark, Starks, house Starks, Winter Is Coming"
    },
    {
      name: "Collar Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0002_Collar-Gato-2.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar largo, accesorio, metal, plateado, gris, gato, animales, blanco, big eyes, tierno"
    },
    {
      name: "Llavero Darth Vader",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0003_Llavero-Darth-Vader.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "llavero, keychan, plateado, gris, envejecido, Darth Vader, Star Wars, Anakin, Anakin Skywalker, May The Force Be With You, May the 4rth"
    },
    {
      name: "Collar Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0004_Collar-Gato.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar largo, accesorio, dorado, perla, piedras, rosado, blanco, gato, animales"
    },
    {
      name: "Reloj Gato",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0005_Reloj-Gato.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "reloj, clock, accesorio, gato, animales, blanco, dorado, miau, bling, cuero"
    },
    {
      name: "Audífonos Baymax",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0006_Audífonos-Baymax.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "audifonos, earplugs, electronicos, musica, Baymax, Big Hero 6, Grandes Heroes, Disney, Hiro, ba la la la"
    },
    {
      name: "Pin Mano del Rey",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0007_Pin-Mano-de-Rey.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "pin, dorado, GoT, Game of Thrones, mano del rey, kingshand, Tyrion, accesorio, envejecido"
    },
    {
      name: "Collar Espada Game of Thrones",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0008_Collar-Espada-Games-Of-Thrones.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar largo, GoT, Game of Thrones, dorado, gris, rojo, accesorio"
    },
    {
      name: "Aros Giratiempo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0009_Aros-Gira-Tiempo.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "aros, accesorio, dorado, amarillo, reloj, Harry Potter, HP, giratiempo, time turner, Hermione"
    },
    {
      name: "Collar Giratiempo",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0010_Collar-Gira-Tiempo.png",
      price: 9000,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "collar, collar largo, accesorio, dorado, amarillo, reloj, harry potter, hp, giratiempo, time turner, hermione"
    },
    {
      name: "Pendrive BB8",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_14_0011_Pendrive-BB8.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 14,
      best_seller: [true, false, false].sample,
      tag_list: "pendrive, usb, electronicos, BB8, Star Wars, The Force Awakens, Star Wars The Force Awakens, Poe Dameron, robot, naranjo, blanco, plástico"
    },
    {
      name: "",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0000_Crop-Top-Lanilla.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "polera, ropa, crop top, manga larga, lanilla, negro, crema"
    },
    {
      name: "",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0001_Vestido-Modelo-Corazón.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "vestido, ropa, verano, corazón, crema, negro, blanco, rayas, talla s"
    },
    {
      name: "",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0003_Funda-para-Cojín-Ariel-Alternativa.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "bolso, bolsos y carteras, backpack, mochila, skull, calavera, negro, colores, estrella, corazón, moustache, México, polka dots"
    },
    {
      name: "Cojín Ariel Alternativa",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0003_Funda-para-Cojín-Ariel-Alternativa.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "funda, cojín, funda cojín, ropa de cama, almohada, negro, rojo, ariel, disney, la sirenita, sirena, alternativo, princesa, tatuajes, piercings, corset, estrellas, hipster"
    },
    {
      name: "Bolsa Negra Puntos Blancos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0004_Bolsa-Negra-Puntos-Blancos.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "bolsa, bolso, bolsos y carteras, negro, blanco, polka dots"
    },
    {
      name: "Vestido Negro Puntos Blancos",
      description: Faker::Lorem.sentence(5),
      photo: "product_photo_store_15_0005_Vestido-Negro-Puntos-Blancos.png",
      price: 500,
      stock: Number.between(1, 15),
      store_id: 15,
      best_seller: [true, false, false].sample,
      tag_list: "vestido, ropa, negro, blanco, polka dots, talla s, verano"
    },
  )