puts 'Cleaning database...'

Store.destroy_all
Item.destroy_all

puts 'Database clean!'

puts 'Creating data...'

store = Store.create!(name: 'Home Depot', phone_number: '123-333-3456', address: '123 fake street')
items = Item.create!([{ name: 'Hammer', description: '18 oz, Titanium'}, { name: 'Chisel', description: '4 oz, Steel'}, { name: 'Hammer', description: '20 oz, Steel' }])

ItemStore.create!(item: items.first, store: store, availability: true, price: 2000)
ItemStore.create!(item: items.second, store: store, availability: true, price: 1800)
ItemStore.create!(item: items.third, store: store, availability: true, price: 1500)

puts 'Data created!'