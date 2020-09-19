puts 'Cleaning database...'

ItemList.destroy_all
ItemStore.destroy_all
Store.destroy_all
Item.destroy_all
List.destroy_all
User.destroy_all

puts 'Database clean!'

puts 'Creating data...'

user = User.create!(email: 'vincent@gmail.com', password: '123456')

# Showing the user created
puts "User: #{user.email}"

stores = Store.create!([{ name: 'Home Depot', phone_number: '123-333-3456', address: '123 fake street' },
                        { name: 'Canadian Tire', phone_number: '098-765-4321', address: '123 fake street' }
                       ])

# Showing the stores created
stores.each do |store|
  puts "Store: #{store.name}"
end

items = Item.create!([{ name: 'Multibit Screwdriver', description: '11-in-1, Comfort Grip' },
                      { name: 'Chisel', description: '4 oz, Steel' }, 
                      { name: 'Hammer', description: '20 oz, Titanium' },
                      { name: 'Framing stud', description: '2 in. x 3 in. x 8 ft., Wood' },
                      { name: 'Plywood Sheathing', description: '11/32 in. x 4 ft. x 8 ft., Wood' },
                      { name: 'Sande Plywood', description: '0.709 in. x 48 in. x 96 in., Wood' },
                      { name: 'Construction Screw', description: '200 x 3 in., Steel' },
                      { name: 'Impact Driver Cordless', description: '20-Volt, Power Tool' },
                      { name: 'Circular Saw with Brake', description: '20-Volt, Power Tool' }
                     ])

# Showing the items created
items.each do |item|
  puts "Item: #{item.name}"
end

items_home_depot = ItemStore.create!([{ item: items[0], store: stores[0], availability: true, price: 26 },
                                      { item: items[1], store: stores[0], availability: true, price: 11 },
                                      { item: items[2], store: stores[0], availability: true, price: 26 },
                                      { item: items[3], store: stores[0], availability: false, price: 4 },
                                      { item: items[4], store: stores[0], availability: true, price: 24 },
                                      { item: items[6], store: stores[0], availability: true, price: 6 },
                                      { item: items[7], store: stores[0], availability: false, price: 139 },
                                      { item: items[7], store: stores[0], availability: true, price: 179 }
                                      ])

items_canadian_tire = ItemStore.create!([{ item: items[0], store: stores[1], availability: false, price: 26 },
                                         { item: items[1], store: stores[1], availability: true, price: 11 },
                                         { item: items[2], store: stores[1], availability: true, price: 26 },
                                         { item: items[3], store: stores[1], availability: true, price: 4 },
                                         { item: items[4], store: stores[1], availability: true, price: 24 },
                                         { item: items[6], store: stores[1], availability: true, price: 6 },
                                         { item: items[7], store: stores[1], availability: true, price: 139 },
                                         { item: items[7], store: stores[1], availability: false, price: 179 }
                                        ])

# Showing the items from Home Depot
items_home_depot.each do |item|
  puts "Item Store: #{item.store.name} - availability: #{item.availability} - #{item.price}$"
end

# Showing the items from Canadian Tire
items_canadian_tire.each do |item|
  puts "Item Store: #{item.store.name} - availability: #{item.availability} - #{item.price}$"
end

lists = List.create!([{ project_name: 'Renovating the bathroom', user: user },
                      { project_name: 'Renovating the kitchen', user: user }
                     ])

# Showing the lists created
lists.each do |list|
  puts "List: #{list.project_name}"
end

items_bathroom = ItemList.create!([{ item: items[0], list: lists[0], picked_up: false },
                                   { item: items[1], list: lists[0], picked_up: false },
                                   { item: items[2], list: lists[0], picked_up: false },
                                   { item: items[3], list: lists[0], picked_up: false },
                                   { item: items[4], list: lists[0], picked_up: false },
                                   { item: items[6], list: lists[0], picked_up: false },
                                   { item: items[7], list: lists[0], picked_up: false },
                                   { item: items[8], list: lists[0], picked_up: false }
                                  ])

items_kitchen = ItemList.create!([{ item: items[0], list: lists[1], picked_up: false },
                                  { item: items[1], list: lists[1], picked_up: false },
                                  { item: items[2], list: lists[1], picked_up: false },
                                  { item: items[3], list: lists[1], picked_up: false },
                                  { item: items[4], list: lists[1], picked_up: false },
                                  { item: items[6], list: lists[1], picked_up: false },
                                  { item: items[7], list: lists[1], picked_up: false },
                                  { item: items[8], list: lists[1], picked_up: false }
                                 ])

# Showing the list of items for the bathroom
items_bathroom.each do |item|
  puts "Item List: #{item.list.project_name}"
end

# Showing the list of items for the kitchen
items_kitchen.each do |item|
  puts "Item List: #{item.list.project_name}"
end

puts 'Data created!'