# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

user1 = User.create!(email: 'maria@email.com', password: '123456')
user2 = User.create!(email: 'jose@test.com', password: '123123')
user3 = User.create!(email: 'paulo@email.com', password: '123123')

card1 = Card.create!(
  user: user1,
  name: "Tithe Drinker",
  price: 12.50,
  category: "Creature",
  # photo: "https://static.cardkingdom.com/images/magic-the-gathering/dragons-maze/tithe-drinker-33674.jpg",
  foil: false,
  conservation_state: "SP",
  color: "white and black",
  edition: "JMP",
  rarity: "common"
)

card1.photo.attach(io: URI.open("https://static.cardkingdom.com/images/magic-the-gathering/dragons-maze/tithe-drinker-33674.jpg"), filename: "#{card1.name.tr(' ', '')}.jpg")

card2 = Card.create!(
  user: user2,
  name: "Settle the Score",
  price: 25.00,
  category: "Sorcery",
  # photo: "https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=489282&type=card",
  foil: false,
  conservation_state: "SP",
  color: "black",
  edition: "JMP",
  rarity: "uncommon"
)

card2.photo.attach(io: URI.open("https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=489282&type=card"), filename: "#{card2.name.tr(' ', '')}.jpg")

card3 = Card.create!(
  user: user3,
  name: "Não disse por favor",
  price: 5.00,
  category: "Instant",
  # photo: "http://cdn.shopify.com/s/files/1/1515/2596/products/e67687b2-9b7b-47f9-b62f-720db11255ad_grande.jpg?v=1571027797",
  foil: false,
  conservation_state: "M",
  color: "blue",
  edition: "ELD",
  rarity: "common"
)

card3.photo.attach(io: URI.open("http://cdn.shopify.com/s/files/1/1515/2596/products/e67687b2-9b7b-47f9-b62f-720db11255ad_grande.jpg?v=1571027797"), filename: "#{card3.name.tr(' ', '')}.jpg")

card4 = Card.create!(
  user: user1,
  name: "Tabuleta das guildas",
  price: 7.00,
  category: "Artifact",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/326/5f4243c48d1db-m7wx5t-wqnjrt-577ef1154f3240ad5b9b413aa7346a1e.jpg",
  foil: false,
  conservation_state: "NM",
  color: "colorless",
  edition: "AKH",
  rarity: "uncommon"
)

card4.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/326/5f4243c48d1db-m7wx5t-wqnjrt-577ef1154f3240ad5b9b413aa7346a1e.jpg"), filename: "#{card4.name.tr(' ', '')}.jpg")

card5 = Card.create!(
  user: user3,
  name: "Hallowed Fountain",
  price: 450.00,
  category: "Land",
  # photo: "https://product-images.tcgplayer.com/fit-in/400x558/104372.jpg",
  foil: true,
  conservation_state: "M",
  color: "colorless",
  edition: "EXP",
  rarity: "mythic rare"
)

card5.photo.attach(io: URI.open("https://product-images.tcgplayer.com/fit-in/400x558/104372.jpg"), filename: "#{card5.name.tr(' ', '')}.jpg")

card6 = Card.create!(
  user: user1,
  name: "Maldição do suíno",
  price: 20.00,
  category: "Sorcery",
  # photo: "https://c1.scryfall.com/file/scryfall-cards/large/front/7/5/75ed3f3a-6773-49ff-b440-c5c8e726fc56.jpg?1615501843",
  foil: false,
  conservation_state: "SP",
  color: "blue",
  edition: "C21",
  rarity: "rare"
)

card6.photo.attach(io: URI.open("https://c1.scryfall.com/file/scryfall-cards/large/front/7/5/75ed3f3a-6773-49ff-b440-c5c8e726fc56.jpg?1615501843"), filename: "#{card6.name.tr(' ', '')}.jpg")

card7 = Card.create!(
  user: user1,
  name: "Wizened Snitches",
  price: 16.00,
  category: "Creature",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/197/5f424340b8875-m1nf9c-sr3vef-d09bf41544a3365a46c9077ebb5e35c3.jpg",
  foil: true,
  conservation_state: "SP",
  color: "Blue",
  edition: "C21",
  rarity: "uncommon"
)

card7.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/197/5f424340b8875-m1nf9c-sr3vef-d09bf41544a3365a46c9077ebb5e35c3.jpg"), filename: "#{card7.name.tr(' ', '')}.jpg")

card8 = Card.create!(
  user: user2,
  name: "Tribute Mage",
  price: 29.00,
  category: "Creature",
  # photo: "https://gatherer.wizards.com/Handlers/Image.ashx?type=card&name=Tribute+Mage",
  foil: true,
  conservation_state: "MP",
  color: "Blue",
  edition: "BFZ",
  rarity: "rare"
)

card8.photo.attach(io: URI.open("https://gatherer.wizards.com/Handlers/Image.ashx?type=card&name=Tribute+Mage"), filename: "#{card8.name.tr(' ', '')}.jpg")

card9 = Card.create!(
  user: user3,
  name: "Arquivo de Edro",
  price: 5.00,
  category: "artifact",
  # photo: "https://mypcards.com/img/1/1191/magic_c19_214/magic_c19_214_pt_thumb.jpg",
  foil: false,
  conservation_state: "NM",
  color: "colorless",
  edition: "C21",
  rarity: "uncommon"
)

card9.photo.attach(io: URI.open("https://mypcards.com/img/1/1191/magic_c19_214/magic_c19_214_pt_thumb.jpg"), filename: "#{card9.name.tr(' ', '')}.jpg")

card10 = Card.create!(
  user: user1,
  name: "Terrivelmente Errado",
  price: 6.00,
  category: "instant",
  # photo: "https://mypcards.com/img/1/6/magic_bfz_059/magic_bfz_059_pt_thumb.jpg",
  foil: false,
  conservation_state: "SP",
  color: "blue",
  edition: "BFZ",
  rarity: "uncommon"
)

card10.photo.attach(io: URI.open("https://mypcards.com/img/1/6/magic_bfz_059/magic_bfz_059_pt_thumb.jpg"), filename: "#{card10.name.tr(' ', '')}.jpg")

card11 = Card.create!(
  user: user2,
  name: "Pântano",
  price: 2.00,
  category: "Land",
  # photo: "https://www.domaingames.com.br/imagens/200x284/0-SHM-290.jpg",
  foil: true,
  conservation_state: "HP",
  color: "colorless",
  edition: "NFT",
  rarity: "common"
)

card11.photo.attach(io: URI.open("https://www.domaingames.com.br/imagens/200x284/0-SHM-290.jpg"), filename: "#{card11.name.tr(' ', '')}.jpg")

card12 = Card.create!(
  user: user3,
  name: "Oblivion Sower",
  price: 13.00,
  category: "Creature",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/69642/5f4243f91aee0-xyg2cp-w2chai-3416a75f4cea9109507cacd8e2f2aefc.jpg",
  foil: true,
  conservation_state: "MP",
  color: "colorless",
  edition: "DDP",
  rarity: "mythic rare"
)

card12.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/69642/5f4243f91aee0-xyg2cp-w2chai-3416a75f4cea9109507cacd8e2f2aefc.jpg"), filename: "#{card12.name.tr(' ', '')}.jpg")

card13 = Card.create!(
  user: user1,
  name: "A Errante",
  price: 7.00,
  category: "planeswalker",
  # photo: "https://mypcards.com/img/1/1122/magic_war_037/magic_war_037_pt.jpg",
  foil: false,
  conservation_state: "M",
  color: "white",
  edition: "WAR",
  rarity: "uncommon"
)

card13.photo.attach(io: URI.open("https://mypcards.com/img/1/1122/magic_war_037/magic_war_037_pt.jpg"), filename: "#{card13.name.tr(' ', '')}.jpg")

card14 = Card.create!(
  user: user2,
  name: "Mulldrifter",
  price: 185.00,
  category: "Creature",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/479868/612d56b271266-47wj8-bv0oj-1919181794612d56b2712a4.jpg",
  foil: false,
  conservation_state: "MP",
  color: "blue",
  edition: "CMR",
  rarity: "uncommon"
)

card14.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/479868/612d56b271266-47wj8-bv0oj-1919181794612d56b2712a4.jpg"), filename: "#{card14.name.tr(' ', '')}.jpg")

card15 = Card.create!(
  user: user3,
  name: "Priest of Fell Rites",
  price: 56.00,
  category: "creature",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/479868/612d56c04c27f-2nfi9-di3eb-695277384612d56c04c2be.jpg",
  foil: false,
  conservation_state: "M",
  color: "white",
  edition: "MH2",
  rarity: "rare"
)

card15.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/479868/612d56c04c27f-2nfi9-di3eb-695277384612d56c04c2be.jpg"), filename: "#{card15.name.tr(' ', '')}.jpg")

card16 = Card.create!(
  user: user1,
  name: "Ranar, o vigilante eterno",
  price: 55.00,
  category: "Creature",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/479837/600859b56f29a-yrl9b-mfxik-1953855683600859b56f300.jpg",
  foil: true,
  conservation_state: "M",
  color: "blue",
  edition: "KHC",
  rarity: "mythic rare"
)

card16.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/479837/600859b56f29a-yrl9b-mfxik-1953855683600859b56f300.jpg"), filename: "#{card16.name.tr(' ', '')}.jpg")

card17 = Card.create!(
  user: user2,
  name: "Sol Ring",
  price: 4.00,
  category: "artifact",
  # photo: "https://repositorio.sbrauble.com/arquivos/in/magic/179141/5f42440e809e7-tfvl2n-tvxh58-9b04d152845ec0a378394003c96da594.jpg",
  foil: false,
  conservation_state: "NM",
  color: "colorless",
  edition: "CMR",
  rarity: "uncommon"
)

card17.photo.attach(io: URI.open("https://repositorio.sbrauble.com/arquivos/in/magic/179141/5f42440e809e7-tfvl2n-tvxh58-9b04d152845ec0a378394003c96da594.jpg"), filename: "#{card17.name.tr(' ', '')}.jpg")

card18 = Card.create!(
  user: user3,
  name: "Vega, o vigia",
  price: 9.00,
  category: "creature",
  # photo: "https://mypcards.com/img/1/1515/magic_khm_233/magic_khm_233_en.jpg",
  foil: false,
  conservation_state: "HP",
  color: "white",
  edition: "KHM",
  rarity: "uncommon"
)

card18.photo.attach(io: URI.open("https://mypcards.com/img/1/1515/magic_khm_233/magic_khm_233_en.jpg"), filename: "#{card18.name.tr(' ', '')}.jpg")
