# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Delete all existed data"

User.destroy_all
Card.destroy_all

puts "Recreating data....."

user1 = User.create!(email: 'maria@email.com', password: '123456')
user2 = User.create!(email: 'jose@test.com', password: '123123')
user3 = User.create!(email: 'paulo@email.com', password: '123123')

Card.create!(
  user: user1,
  name: "Tithe Drinker",
  price: 12.50,
  category: "Creature",
  photo: "https://static.cardkingdom.com/images/magic-the-gathering/dragons-maze/tithe-drinker-33674.jpg",
  foil: false,
  conservation_state: "SP",
  color: "white and black",
  edition: "JMP",
  rarity: "common"
)

Card.create!(
  user: user2,
  name: "Settle the Score",
  price: 25.00,
  category: "Sorcery",
  photo: "https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=489282&type=card",
  foil: false,
  conservation_state: "SP",
  color: "black",
  edition: "JMP",
  rarity: "uncommon"
)

Card.create!(
  user: user3,
  name: "Não disse por favor",
  price: 5.00,
  category: "Instant",
  photo: "http://cdn.shopify.com/s/files/1/1515/2596/products/e67687b2-9b7b-47f9-b62f-720db11255ad_grande.jpg?v=1571027797",
  foil: false,
  conservation_state: "M",
  color: "blue",
  edition: "ELD",
  rarity: "common"
)

Card.create!(
  user: user1,
  name: "Tabuleta das guildas",
  price: 7.00,
  category: "Artifact",
  photo: "https://repositorio.sbrauble.com/arquivos/in/magic/326/5f4243c48d1db-m7wx5t-wqnjrt-577ef1154f3240ad5b9b413aa7346a1e.jpg",
  foil: false,
  conservation_state: "NM",
  color: "colorless",
  edition: "AKH",
  rarity: "uncommon"
)

Card.create!(
  user: user3,
  name: "Hallowed Fountain",
  price: 450.00,
  category: "Land",
  photo: "https://product-images.tcgplayer.com/fit-in/400x558/104372.jpg",
  foil: true,
  conservation_state: "M",
  color: "colorless",
  edition: "EXP",
  rarity: "mythic rare"
)

Card.create!(
  user: user1,
  name: "Maldição do suíno",
  price: 20.00,
  category: "Sorcery",
  photo: "https://c1.scryfall.com/file/scryfall-cards/large/front/7/5/75ed3f3a-6773-49ff-b440-c5c8e726fc56.jpg?1615501843",
  foil: false,
  conservation_state: "SP",
  color: "blue",
  edition: "C21",
  rarity: "rare"
)

puts "Finished"
