# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 User.destroy_all
 Flat.destroy_all
 User.create!(first_name: "james", last_name: "bond", email: "jb@gmail.com", password: "123456",
  profession: "Developer", people_number: 4,
  profile_description: "Please live here", mobile: "491234567",
  bathroom: 4, bedroom: 1, street: "Linienstr. 19", district: "Mitte",
  post_code: "10178", city:"Berlin", total_rent:"1000", level_floor: 4,
  floors_number:1, vacant_from: "12/11/2019", square_meter: 95, land: 98,
  year_construction: "1995", type_heating: "gas")


  Flat.create!(title: "Nice flat", description: "nice apartement, great area",
  bathroom: 4, bedroom: 1, street: "Linienstr. 20", district: "Mitte",
  post_code: "10178", city:"Berlin", total_rent:"1500", level_floor: 4,
  floors_number:1, vacant_from: "13/11/2019", square_meter: 95, land: 98,
  year_construction: "1996", type_heating: "gas", user_id: 6)

puts "flat created"
