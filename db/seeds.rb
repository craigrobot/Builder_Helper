# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.destroy_all
Item.destroy_all
store = Store.create!(name: 'Home Depot', phone_number: '123-333-3456', address: '123 fake street')
items = Item.create!([{ name: 'Hammer', description: '18 oz, Titanium'}, { name: 'Chisel', description: '4 oz, Steel'}, { name: 'Hammer', description: '20 oz, Steel' }])

ItemStore.create!(item: items.first, store: store, availability: true, price: 2000)
ItemStore.create!(item: items.second, store: store, availability: true, price: 1800)
ItemStore.create!(item: items.third, store: store, availability: true, price: 1500)
