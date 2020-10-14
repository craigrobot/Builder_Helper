require 'open-uri'

puts 'Cleaning database...'

ItemList.destroy_all
ItemStore.destroy_all
Store.destroy_all
Item.destroy_all
List.destroy_all
User.destroy_all
SampleProject.destroy_all

puts 'Database clean!'

puts 'Creating data...'

user = User.create!(email: 'vincent@gmail.com', password: '123456', picture: "https://randomuser.me/api/portraits/men/32.jpg")

# Showing the user created
puts "User: #{user.email}"

home_depot = Store.create!(name: 'Home Depot', phone_number: '(514) 490-8030', address_line_1: '100 rue Beaubien Ouest', address_line_2: 'Montreal, QC, H2S 3S1')
canadian_tire = Store.create!(name: 'Canadian Tire', phone_number: '(514) 521-8888', address_line_1: '3025, rue Sherbrooke Est', address_line_2: 'Montreal, QC, H1W 1B2')
la_boite_a_clous = Store.create!(name: 'La Boite A Clous', phone_number: '(514) 439-4858', address_line_1: '750 Rue Beaubien Est', address_line_2: 'Montréal, QC H2S 1S7')
rona = Store.create!(name: 'Rona', phone_number: '(514) 521-9580', address_line_1: '1473 Avenue Laurier Est', address_line_2: 'Montréal, QC H2J1H8')

# Showing the stores created
# stores.each do |store|
#   puts store
# end

multibit_screwdriver = Item.create!(name: 'Multibit Screwdriver', description: '11-in-1, Comfort Grip', image_url: "https://www.stanleytools.com/NA/product/images/3000x3000x96/68-010/68-010_1.jpg")
chisel = Item.create!(name: 'Chisel', description: '4 oz, Steel', image_url: "https://assets.leevalley.com/Size4/10049/05S2116-veritas-pm-v11-bench-chisel-1-inch-f-01.jpg")
hammer = Item.create!(name: 'Hammer', description: '20 oz, Titanium', image_url: "https://images-na.ssl-images-amazon.com/images/I/71tTWyypTKL._AC_SY355_.jpg")
framing_stud = Item.create!(name: 'Framing Stud', description: '2 in. x 3 in. x 8 ft., Wood', image_url: "https://www.gyprocktrade.com.au/PublishingImages/Product%20Images/Rondo/Steel-Stud-Track-Wall-Framing-System.jpg")
plywood_seathing = Item.create!(name: 'Plywood Sheathing', description: '11/32 in. x 4 ft. x 8 ft., Wood', image_url: "https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/03-2019-Plywood-VisNav-Types-sanded.jpg")
sande_plywood = Item.create!(name: 'Sande Plywood', description: '0.709 in. x 48 in. x 96 in., Wood', image_url: "https://da.lowes.ca/webassets/images/161485_MainImage_001_m.jpg")
construction_screw = Item.create!(name: 'Construction Screw', description: '200 x 3 in., Steel', image_url: "https://images.homedepot-static.com/productImages/afc6d0f0-d726-4d30-abef-f354ba9fcdb8/svn/grip-rite-wood-screws-312gcs10bk-64_1000.jpg")
impact_driver = Item.create!(name: 'Impact Driver Cordless', description: '20-Volt, Power Tool', image_url: "https://www.dewalt.com/NA/product/images/3000x3000x96/DCF801B/DCF801B_1.jpg")
circular_saw = Item.create!(name: 'Circular Saw with Brake', description: '20-Volt, Power Tool', image_url: "https://www.dewalt.com/NA/product/images/3000x3000x96/DW384/DW384_1.jpg")
corner_bead = Item.create!(name: 'Corner Bead Trim', description: '1-1/4 in. x 8 ft., Drywall Metal', image_url: "https://images.homedepot-static.com/productImages/49907ed7-6185-47df-b6a5-fddc816925fa/svn/clarkdietrich-drywall-corner-bead-726955-64_1000.jpg")
durofoam = Item.create!(name: 'Durofoam', description: '96 in. X 48 in. X 1.5 in., EPS Rigid Insulation', image_url: "https://www.plastifab.com/img/products/durofoam-product.png")
cgc_sheetrock = Item.create!(name: 'CGC Sheetrock', description: '1/2 in. x 4 ft. x 8 ft., UltraLight Drywall Panel', image_url: "https://rmlandry.com/sites/castlermlandryson/images/products/cgc_water_res_2023_cgc-1665_400.e2autover-201004161150.jpg")
dab = Item.create!(name: 'DAB', description: '1/2 in. x 4 ft. x 8 ft., Wall Repair Patch Kit', image_url: "https://www.rokinvapes.com/wp-content/uploads/2019/02/dabtool.jpg")
tuck_tape = Item.create!(name: 'Tuck Tape', description: '2.4-in. x 208 ft., Multi-Purpose Tape', image_url: "https://images11.palcdn.com/hlr-system/WebPhotos/86/866/8661/8661829.jpg")

# Showing the items created
# items.each do |item|
#   puts item
# end


# Items from Home Depot
multibit_screwdriver_home_depot = ItemStore.new(availability: true, price: 26)
multibit_screwdriver_home_depot.store = home_depot
multibit_screwdriver_home_depot.item = multibit_screwdriver
multibit_screwdriver_home_depot.save

chisel_home_depot = ItemStore.new(availability: true, price: 11)
chisel_home_depot.store = home_depot
chisel_home_depot.item = chisel
chisel_home_depot.save

hammer_home_depot = ItemStore.new(availability: true, price: 26)
hammer_home_depot.store = home_depot
hammer_home_depot.item = hammer
hammer_home_depot.save

framing_stud_home_depot = ItemStore.new(availability: true, price: 4)
framing_stud_home_depot.store = home_depot
framing_stud_home_depot.item = framing_stud
framing_stud_home_depot.save

plywood_seathing_home_depot = ItemStore.new(availability: true, price: 24)
plywood_seathing_home_depot.store = home_depot
plywood_seathing_home_depot.item = plywood_seathing
plywood_seathing_home_depot.save

sande_plywood_home_depot = ItemStore.new(availability: true, price: 26)
sande_plywood_home_depot.store = home_depot
sande_plywood_home_depot.item = sande_plywood
sande_plywood_home_depot.save

construction_screw_home_depot = ItemStore.new(availability: true, price: 6)
construction_screw_home_depot.store = home_depot
construction_screw_home_depot.item = construction_screw
construction_screw_home_depot.save

impact_driver_home_depot = ItemStore.new(availability: true, price: 139)
impact_driver_home_depot.store = home_depot
impact_driver_home_depot.item = impact_driver
impact_driver_home_depot.save

circular_saw_home_depot = ItemStore.new(availability: true, price: 179)
circular_saw_home_depot.store = home_depot
circular_saw_home_depot.item = circular_saw
circular_saw_home_depot.save

corner_bead_home_depot = ItemStore.new(availability: false, price: 3)
corner_bead_home_depot.store = home_depot
corner_bead_home_depot.item = corner_bead
corner_bead_home_depot.save

durofoam_home_depot = ItemStore.new(availability: true, price: 23)
durofoam_home_depot.store = home_depot
durofoam_home_depot.item = durofoam
durofoam_home_depot.save

cgc_sheetrock_home_depot = ItemStore.new(availability: false, price: 12)
cgc_sheetrock_home_depot.store = home_depot
cgc_sheetrock_home_depot.item = cgc_sheetrock
cgc_sheetrock_home_depot.save

dab_home_depot = ItemStore.new(availability: false, price: 11)
dab_home_depot.store = home_depot
dab_home_depot.item = dab
dab_home_depot.save

tuck_tape_home_depot = ItemStore.new(availability: false, price: 5)
tuck_tape_home_depot.store = home_depot
tuck_tape_home_depot.item = tuck_tape
tuck_tape_home_depot.save


# Items from Canadian Tire
multibit_screwdriver_canadian_tire = ItemStore.new(availability: true, price: 26)
multibit_screwdriver_canadian_tire.store = canadian_tire
multibit_screwdriver_canadian_tire.item = multibit_screwdriver
multibit_screwdriver_canadian_tire.save

chisel_canadian_tire = ItemStore.new(availability: true, price: 11)
chisel_canadian_tire.store = canadian_tire
chisel_canadian_tire.item = chisel
chisel_canadian_tire.save

hammer_canadian_tire = ItemStore.new(availability: true, price: 26)
hammer_canadian_tire.store = canadian_tire
hammer_canadian_tire.item = hammer
hammer_canadian_tire.save

framing_stud_canadian_tire = ItemStore.new(availability: false, price: 4)
framing_stud_canadian_tire.store = canadian_tire
framing_stud_canadian_tire.item = framing_stud
framing_stud_canadian_tire.save

plywood_seathing_canadian_tire = ItemStore.new(availability: true, price: 24)
plywood_seathing_canadian_tire.store = canadian_tire
plywood_seathing_canadian_tire.item = plywood_seathing
plywood_seathing_canadian_tire.save

sande_plywood_canadian_tire = ItemStore.new(availability: true, price: 26)
sande_plywood_canadian_tire.store = canadian_tire
sande_plywood_canadian_tire.item = sande_plywood
sande_plywood_canadian_tire.save

construction_screw_canadian_tire = ItemStore.new(availability: true, price: 6)
construction_screw_canadian_tire.store = canadian_tire
construction_screw_canadian_tire.item = construction_screw
construction_screw_canadian_tire.save

impact_driver_canadian_tire = ItemStore.new(availability: false, price: 139)
impact_driver_canadian_tire.store = canadian_tire
impact_driver_canadian_tire.item = impact_driver
impact_driver_canadian_tire.save

circular_saw_canadian_tire = ItemStore.new(availability: true, price: 179)
circular_saw_canadian_tire.store = canadian_tire
circular_saw_canadian_tire.item = circular_saw
circular_saw_canadian_tire.save

corner_bead_canadian_tire = ItemStore.new(availability: false, price: 3)
corner_bead_canadian_tire.store = canadian_tire
corner_bead_canadian_tire.item = corner_bead
corner_bead_canadian_tire.save

durofoam_canadian_tire = ItemStore.new(availability: true, price: 23)
durofoam_canadian_tire.store = canadian_tire
durofoam_canadian_tire.item = durofoam
durofoam_canadian_tire.save

cgc_sheetrock_canadian_tire = ItemStore.new(availability: true, price: 12)
cgc_sheetrock_canadian_tire.store = canadian_tire
cgc_sheetrock_canadian_tire.item = cgc_sheetrock
cgc_sheetrock_canadian_tire.save

dab_canadian_tire = ItemStore.new(availability: false, price: 11)
dab_canadian_tire.store = canadian_tire
dab_canadian_tire.item = dab
dab_canadian_tire.save

tuck_tape_canadian_tire = ItemStore.new(availability: true, price: 5)
tuck_tape_canadian_tire.store = canadian_tire
tuck_tape_canadian_tire.item = tuck_tape
tuck_tape_canadian_tire.save


# Items from La Boite a Clous
multibit_screwdriver_la_boite_a_clous = ItemStore.new(availability: false, price: 26)
multibit_screwdriver_la_boite_a_clous.store = la_boite_a_clous
multibit_screwdriver_la_boite_a_clous.item = multibit_screwdriver
multibit_screwdriver_la_boite_a_clous.save

chisel_la_boite_a_clous = ItemStore.new(availability: true, price: 11)
chisel_la_boite_a_clous.store = la_boite_a_clous
chisel_la_boite_a_clous.item = chisel
chisel_la_boite_a_clous.save

hammer_la_boite_a_clous = ItemStore.new(availability: true, price: 26)
hammer_la_boite_a_clous.store = la_boite_a_clous
hammer_la_boite_a_clous.item = hammer
hammer_la_boite_a_clous.save

framing_stud_la_boite_a_clous = ItemStore.new(availability: false, price: 4)
framing_stud_la_boite_a_clous.store = la_boite_a_clous
framing_stud_la_boite_a_clous.item = framing_stud
framing_stud_la_boite_a_clous.save

plywood_seathing_la_boite_a_clous = ItemStore.new(availability: true, price: 24)
plywood_seathing_la_boite_a_clous.store = la_boite_a_clous
plywood_seathing_la_boite_a_clous.item = plywood_seathing
plywood_seathing_la_boite_a_clous.save

sande_plywood_la_boite_a_clous = ItemStore.new(availability: true, price: 26)
sande_plywood_la_boite_a_clous.store = la_boite_a_clous
sande_plywood_la_boite_a_clous.item = sande_plywood
sande_plywood_la_boite_a_clous.save

construction_screw_la_boite_a_clous = ItemStore.new(availability: true, price: 6)
construction_screw_la_boite_a_clous.store = la_boite_a_clous
construction_screw_la_boite_a_clous.item = construction_screw
construction_screw_la_boite_a_clous.save

impact_driver_la_boite_a_clous = ItemStore.new(availability: true, price: 139)
impact_driver_la_boite_a_clous.store = la_boite_a_clous
impact_driver_la_boite_a_clous.item = impact_driver
impact_driver_la_boite_a_clous.save

circular_saw_la_boite_a_clous = ItemStore.new(availability: false, price: 179)
circular_saw_la_boite_a_clous.store = la_boite_a_clous
circular_saw_la_boite_a_clous.item = circular_saw
circular_saw_la_boite_a_clous.save

corner_bead_la_boite_a_clous = ItemStore.new(availability: false, price: 3)
corner_bead_la_boite_a_clous.store = la_boite_a_clous
corner_bead_la_boite_a_clous.item = corner_bead
corner_bead_la_boite_a_clous.save

durofoam_la_boite_a_clous = ItemStore.new(availability: true, price: 23)
durofoam_la_boite_a_clous.store = la_boite_a_clous
durofoam_la_boite_a_clous.item = durofoam
durofoam_la_boite_a_clous.save

cgc_sheetrock_la_boite_a_clous = ItemStore.new(availability: false, price: 12)
cgc_sheetrock_la_boite_a_clous.store = la_boite_a_clous
cgc_sheetrock_la_boite_a_clous.item = cgc_sheetrock
cgc_sheetrock_la_boite_a_clous.save

dab_la_boite_a_clous = ItemStore.new(availability: false, price: 11)
dab_la_boite_a_clous.store = la_boite_a_clous
dab_la_boite_a_clous.item = dab
dab_la_boite_a_clous.save

tuck_tape_la_boite_a_clous = ItemStore.new(availability: false, price: 5)
tuck_tape_la_boite_a_clous.store = la_boite_a_clous
tuck_tape_la_boite_a_clous.item = tuck_tape
tuck_tape_la_boite_a_clous.save


# Items from Rona
multibit_screwdriver_rona = ItemStore.new(availability: true, price: 26)
multibit_screwdriver_rona.store = rona
multibit_screwdriver_rona.item = multibit_screwdriver
multibit_screwdriver_rona.save

chisel_rona = ItemStore.new(availability: true, price: 11)
chisel_rona.store = rona
chisel_rona.item = chisel
chisel_rona.save

hammer_rona = ItemStore.new(availability: true, price: 26)
hammer_rona.store = rona
hammer_rona.item = hammer
hammer_rona.save

framing_stud_rona = ItemStore.new(availability: true, price: 4)
framing_stud_rona.store = rona
framing_stud_rona.item = framing_stud
framing_stud_rona.save

plywood_seathing_rona = ItemStore.new(availability: true, price: 24)
plywood_seathing_rona.store = rona
plywood_seathing_rona.item = plywood_seathing
plywood_seathing_rona.save

sande_plywood_rona = ItemStore.new(availability: false, price: 26)
sande_plywood_rona.store = rona
sande_plywood_rona.item = sande_plywood
sande_plywood_rona.save

construction_screw_rona = ItemStore.new(availability: true, price: 6)
construction_screw_rona.store = rona
construction_screw_rona.item = construction_screw
construction_screw_rona.save

impact_driver_rona = ItemStore.new(availability: false, price: 139)
impact_driver_rona.store = rona
impact_driver_rona.item = impact_driver
impact_driver_rona.save

circular_saw_rona = ItemStore.new(availability: true, price: 179)
circular_saw_rona.store = rona
circular_saw_rona.item = circular_saw
circular_saw_rona.save

corner_bead_rona = ItemStore.new(availability: false, price: 3)
corner_bead_rona.store = rona
corner_bead_rona.item = corner_bead
corner_bead_rona.save

durofoam_rona = ItemStore.new(availability: true, price: 23)
durofoam_rona.store = rona
durofoam_rona.item = durofoam
durofoam_rona.save

cgc_sheetrock_rona = ItemStore.new(availability: true, price: 12)
cgc_sheetrock_rona.store = rona
cgc_sheetrock_rona.item = cgc_sheetrock
cgc_sheetrock_rona.save

dab_rona = ItemStore.new(availability: false, price: 11)
dab_rona.store = rona
dab_rona.item = dab
dab_rona.save

tuck_tape_rona = ItemStore.new(availability: false, price: 5)
tuck_tape_rona.store = rona
tuck_tape_rona.item = tuck_tape
tuck_tape_rona.save


# Showing the items from Home Depot
# items_home_depot.each do |item|
#   puts "Item Store: #{item.store.name} - availability: #{item.availability} - #{item.price}$"
# end

# Showing the items from Canadian Tire
# items_canadian_tire.each do |item|
#   puts "Item Store: #{item.store.name} - availability: #{item.availability} - #{item.price}$"
# end

bathroom_project = List.new(project_name: 'Bathroom', user: user, project_item_count: 15)
bathroom_project_photo_file = URI.open("https://res.cloudinary.com/dnygdmomh/image/upload/v1602203203/Builder%20Helper/hbx030120bathroom-004-copy-1580336692_d3xbnp.jpg")
bathroom_project.photo.attach(io: bathroom_project_photo_file, filename: 'hbx030120bathroom-004-copy-1580336692_d3xbnp')
bathroom_project.user = user
bathroom_project.save

bedroom_project = List.new(project_name: 'Bedroom', user: user, project_item_count: 12)
bedroom_project_photo_file = URI.open("https://res.cloudinary.com/dnygdmomh/image/upload/v1602203200/Builder%20Helper/PastedGraphic-5-copy-970x610_znfx1t.jpg")
bedroom_project.photo.attach(io: bedroom_project_photo_file, filename: 'PastedGraphic-5-copy-970x610_znfx1t')
bedroom_project.user = user
bedroom_project.save

# Showing the lists created
# lists.each do |list|
#   puts "List: #{list.project_name}"
# end


# Items for the bathroom project
multibit_screwdriver_bathroom_project = ItemList.new(picked_up: false)
multibit_screwdriver_bathroom_project.list = bathroom_project
multibit_screwdriver_bathroom_project.item = multibit_screwdriver
multibit_screwdriver_bathroom_project.save

chisel_bathroom_project = ItemList.new(picked_up: false)
chisel_bathroom_project.list = bathroom_project
chisel_bathroom_project.item = chisel
chisel_bathroom_project.save

hammer_bathroom_project = ItemList.new(picked_up: false)
hammer_bathroom_project.list = bathroom_project
hammer_bathroom_project.item = hammer
hammer_bathroom_project.save

framing_stud_bathroom_project = ItemList.new(picked_up: false)
framing_stud_bathroom_project.list = bathroom_project
framing_stud_bathroom_project.item = framing_stud
framing_stud_bathroom_project.save

plywood_seathing_bathroom_project = ItemList.new(picked_up: false)
plywood_seathing_bathroom_project.list = bathroom_project
plywood_seathing_bathroom_project.item = plywood_seathing
plywood_seathing_bathroom_project.save

sande_plywood_bathroom_project = ItemList.new(picked_up: false)
sande_plywood_bathroom_project.list = bathroom_project
sande_plywood_bathroom_project.item = sande_plywood
sande_plywood_bathroom_project.save

construction_screw_bathroom_project = ItemList.new(picked_up: false)
construction_screw_bathroom_project.list = bathroom_project
construction_screw_bathroom_project.item = construction_screw
construction_screw_bathroom_project.save

impact_driver_bathroom_project = ItemList.new(picked_up: false)
impact_driver_bathroom_project.list = bathroom_project
impact_driver_bathroom_project.item = impact_driver
impact_driver_bathroom_project.save

circular_saw_bathroom_project = ItemList.new(picked_up: false)
circular_saw_bathroom_project.list = bathroom_project
circular_saw_bathroom_project.item = circular_saw
circular_saw_bathroom_project.save

corner_bead_bathroom_project = ItemList.new(picked_up: false)
corner_bead_bathroom_project.list = bathroom_project
corner_bead_bathroom_project.item = corner_bead
corner_bead_bathroom_project.save

durofoam_bathroom_project = ItemList.new(picked_up: false)
durofoam_bathroom_project.list = bathroom_project
durofoam_bathroom_project.item = durofoam
durofoam_bathroom_project.save

cgc_sheetrock_bathroom_project = ItemList.new(picked_up: false)
cgc_sheetrock_bathroom_project.list = bathroom_project
cgc_sheetrock_bathroom_project.item = cgc_sheetrock
cgc_sheetrock_bathroom_project.save

dab_bathroom_project = ItemList.new(picked_up: false)
dab_bathroom_project.list = bathroom_project
dab_bathroom_project.item = dab
dab_bathroom_project.save

tuck_tape_bathroom_project = ItemList.new(picked_up: false)
tuck_tape_bathroom_project.list = bathroom_project
tuck_tape_bathroom_project.item = tuck_tape
tuck_tape_bathroom_project.save


# Items for the bedroom project
multibit_screwdriver_bedroom_project = ItemList.new(picked_up: false)
multibit_screwdriver_bedroom_project.list = bedroom_project
multibit_screwdriver_bedroom_project.item = multibit_screwdriver
multibit_screwdriver_bedroom_project.save

chisel_bedroom_project = ItemList.new(picked_up: false)
chisel_bedroom_project.list = bedroom_project
chisel_bedroom_project.item = chisel
chisel_bedroom_project.save

hammer_bedroom_project = ItemList.new(picked_up: false)
hammer_bedroom_project.list = bedroom_project
hammer_bedroom_project.item = hammer
hammer_bedroom_project.save

framing_stud_bedroom_project = ItemList.new(picked_up: false)
framing_stud_bedroom_project.list = bedroom_project
framing_stud_bedroom_project.item = framing_stud
framing_stud_bedroom_project.save

plywood_seathing_bedroom_project = ItemList.new(picked_up: false)
plywood_seathing_bedroom_project.list = bedroom_project
plywood_seathing_bedroom_project.item = plywood_seathing
plywood_seathing_bedroom_project.save

sande_plywood_bedroom_project = ItemList.new(picked_up: false)
sande_plywood_bedroom_project.list = bedroom_project
sande_plywood_bedroom_project.item = sande_plywood
sande_plywood_bedroom_project.save

construction_screw_bedroom_project = ItemList.new(picked_up: false)
construction_screw_bedroom_project.list = bedroom_project
construction_screw_bedroom_project.item = construction_screw
construction_screw_bedroom_project.save

impact_driver_bedroom_project = ItemList.new(picked_up: false)
impact_driver_bedroom_project.list = bedroom_project
impact_driver_bedroom_project.item = impact_driver
impact_driver_bedroom_project.save

circular_saw_bedroom_project = ItemList.new(picked_up: false)
circular_saw_bedroom_project.list = bedroom_project
circular_saw_bedroom_project.item = circular_saw
circular_saw_bedroom_project.save

corner_bead_bedroom_project = ItemList.new(picked_up: false)
corner_bead_bedroom_project.list = bedroom_project
corner_bead_bedroom_project.item = corner_bead
corner_bead_bedroom_project.save

durofoam_bedroom_project = ItemList.new(picked_up: false)
durofoam_bedroom_project.list = bedroom_project
durofoam_bedroom_project.item = durofoam
durofoam_bedroom_project.save

cgc_sheetrock_bedroom_project = ItemList.new(picked_up: false)
cgc_sheetrock_bedroom_project.list = bedroom_project
cgc_sheetrock_bedroom_project.item = cgc_sheetrock
cgc_sheetrock_bedroom_project.save

dab_bedroom_project = ItemList.new(picked_up: false)
dab_bedroom_project.list = bedroom_project
dab_bedroom_project.item = dab
dab_bedroom_project.save

tuck_tape_bedroom_project = ItemList.new(picked_up: false)
tuck_tape_bedroom_project.list = bedroom_project
tuck_tape_bedroom_project.item = tuck_tape
tuck_tape_bedroom_project.save

circular_saw = Tool.create(name: "Circular Saw")
power_drill = Tool.create(name: "Power Drill")
clamps = Tool.create(name: "Clamps")
jig_saw = Tool.create(name: "Jig Saw")
screwdriver = Tool.create(name: "Screwdriver")
paint_brush = Tool.create(name: "Paint Brush")
sander = Tool.create(name: "Sander")


tabletop_slats = Material.create(name: "Tabletop Slats: 1 1/2 x 7 1/4 x 72")
bench_slats = Material.create(name: "Bench Slats: 1 1/2 x 5 1/2 x 68")
table_legs = Material.create(name: "Table Legs: 1 1/2 x 5 1/2 x 40 1/2 inches")
center_table_support = Material.create(name: "Center Table Support: 1 1/2 x 3 1/2 x 28 3/4")
end_table_supports = Material.create(name: "End Table Supports: 1 1/2 x 3 1/2 x 28 3/4")
bench_supports = Material.create(name: "Bench Supports: 1 1/2 x 3 1/2 x 61")
braces = Material.create(name: "Braces: 1 1/2 x 3 1/2 x 30 3/4")
bench_cleats = Material.create(name: "Bench Cleats: 1 1/2 x 3 1/2 x 10")
wood_glue = Material.create(name: "Wood Glue")
wood_screws = Material.create(name: "Wood Screws")

spanish_tiles = SampleProject.create(title: "SPANISH TILES", image: "https://res.cloudinary.com/dwitqft8h/image/upload/v1602195964/65250-8848330_hazeno.jpg")
vintage_cabinets = SampleProject.create(title: "VINTAGE CABINETS", image: "https://res.cloudinary.com/dwitqft8h/image/upload/v1602195964/french-vintage-kitchen-island-on-vintage-wool-rug_haamel.jpg")
deck_storage = SampleProject.create(title: "DECK STORAGE", image: "https://res.cloudinary.com/dwitqft8h/image/upload/v1602195964/0906_cooper_7987_Edit.7_jaur2a.jpg")
picnic_table = SampleProject.create(title: "PICNIC TABLE", image: "https://res.cloudinary.com/dwitqft8h/image/upload/v1602195964/iStock_515454363_saz5zf.jpg", level: "Level", instructions: "1. do this; 2. do this 3. Do this;")

SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: wood_screws.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: wood_glue.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: bench_cleats.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: braces.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: bench_supports.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: end_table_supports.id)
SampleProjectMaterial.create(sample_project_id: picnic_table.id, material_id: center_table_support.id)
SampleProjectMaterial.create(count: 4, sample_project_id: picnic_table.id, material_id: table_legs.id)
SampleProjectMaterial.create(count: 4, sample_project_id: picnic_table.id, material_id: bench_slats.id)
SampleProjectMaterial.create(count: 4, sample_project_id: picnic_table.id, material_id: tabletop_slats.id)

SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: circular_saw.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: power_drill.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: clamps.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: jig_saw.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: screwdriver.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: paint_brush.id)
SampleProjectTool.create(sample_project_id: picnic_table.id, tool_id: sander.id)


puts 'Data created!'
