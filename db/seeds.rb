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

home_depot = Store.create!(name: 'Home Depot', phone_number: '123-333-3456', address: '123 fake street'),
candaian_tire = Store.create!(name: 'Canadian Tire', phone_number: '098-765-4321', address: '123 fake street')


# Showing the stores created
# stores.each do |store|
#   puts store
# end

multibit_screwdriver = Item.create!(name: 'Multibit Screwdriver', description: '11-in-1, Comfort Grip'),
chisel = Item.create!(name: 'Chisel', description: '4 oz, Steel'),
hammer = Item.create!(name: 'Hammer', description: '20 oz, Titanium'),
framing_stud = Item.create!(name: 'Framing stud', description: '2 in. x 3 in. x 8 ft., Wood'),
plywood_seathing = Item.create!(name: 'Plywood Sheathing', description: '11/32 in. x 4 ft. x 8 ft., Wood'),
sande_plywood = Item.create!(name: 'Sande Plywood', description: '0.709 in. x 48 in. x 96 in., Wood'),
construction_screw = Item.create!(name: 'Construction Screw', description: '200 x 3 in., Steel'),
impact_driver = Item.create!(name: 'Impact Driver Cordless', description: '20-Volt, Power Tool'),
circular_saw = Item.create!(name: 'Circular Saw with Brake', description: '20-Volt, Power Tool')

# Showing the items created
# items.each do |item|
#   puts item
# end

multibit_screwdriver_home_depot = ItemStore.new(availability: true, price: 26)

chisel_home_depot = ItemStore.new(availability: true, price: 11)

hammer_home_depot = ItemStore.new(availability: true, price: 26)
hammer_home_depot.store = home_depot
hammer_home_depot.item = hammer
hammer_home_depot.save


framing_stud_home_depot = ItemStore.new(availability: false, price: 4)

plywood_seathing_home_depot = ItemStore.new(availability: true, price: 24)

sande_plywood_home_depot = ItemStore.new(availability: true, price: 26)

construction_screw_home_depot = ItemStore.new(availability: true, price: 6)   

impact_driver_home_depot = ItemStore.new(availability: false, price: 139)

circular_saw_home_depot = ItemStore.new(availability: true, price: 179)

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

puts 'Data created!'