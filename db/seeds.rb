# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 User.destroy_all
 puts "destroy all users"
 Flat.destroy_all
puts "destroy all flats"

 User.create!(first_name: "test", last_name: "bond", email: "test@example.com", password: "123456",
  profession: "Developer", people_number: 3,
  profile_description: "Please live here", mobile: "491234567",
  bathroom: 4, bedroom: 1, street: "Linienstr. 19", district: "Mitte",
  post_code: "10178", city:"Berlin", total_rent:"1000", level_floor: 4,
  floors_number:1, vacant_from: "12/11/2019", square_meter: 95, land: 98,
  year_construction: "1995", type_heating: "gas")

  User.create!(first_name: "user1", last_name: "bond", email: "jb@gmail.com", password: "123456",
  profession: "Developer", people_number: 4,
  profile_description: "Please live here", mobile: "491234567",
  bathroom: 4, bedroom: 1, street: "Linienstr. 19", district: "Mitte",
  post_code: "10178", city:"Berlin", total_rent:"1000", level_floor: 4,
  floors_number:1, vacant_from: "12/11/2019", square_meter: 95, land: 98,
  year_construction: "1995", type_heating: "gas")

puts "flats created"

  Flat.create!(title: "Nice flat", description: "nice apartement, great area",
  bathroom: 4, bedroom: 1, street: "Linienstr. 20", district: "Mitte",
  post_code: "10178", city:"Berlin", total_rent:"1500", level_floor: 4,
  floors_number:1, vacant_from: "13/11/2019", square_meter: 95, land: 98,
  year_construction: "1996", type_heating: "gas", user_id: 6)

puts "flats created"



    # USERS
    User.create!(first_name: "james", last_name: "bond", user_name: "007", email: "jb@example.com", password: "123456")
    User.create!(first_name: "Mathieu", last_name: "Robin", user_name: "mathieu", email: "mathieu.robin1@gmail.com", password: "123456")
    User.create!(first_name: "Juan", last_name: "Limo Flores", user_name: "juan", email: "juancarlos.limo@gmail.com", password: "123456")
    User.create!(first_name: "Juergen", last_name: "Nguyen", user_name: "juergen", email: "juergen.nguyen@gmail.com", password: "123456")


    # CARS
    Car.create!(user_id: User.first.id, brand:"MG", model:"B", origin:"British", year:"1963", address: "Großer Stern, 10557 Berlin",location:"Berlin", price:"500", remote_photo_url:"https://res.cloudinary.com/mathieurobin1/image/upload/v1566465059/New_pics/MG_B_fcv4id.jpg", content: "The MGB is a two-door sports car manufactured and marketed by the British Motor Corporation (BMC), later the Austin-Morris division of British Leyland, as a four-cylinder, soft-top roadster from 1963 until 1980. Its details were first published on 19 September 1962. Variants include the MGB GT three-door 2+2 coupé (1965–1980), the six-cylinder roadster and coupé MGC (1967–69), and the eight-cylinder 2+2 coupé, the MGB GT V8 (1973–76).")
    Car.create!(user_id: User.first.id, brand:"Jaguar", model:"E-Type", origin:"British", year:"1962", address: "Pariser Platz, 10117 Berlin",location:"Berlin",  price:"1000", remote_photo_url:"https://res.cloudinary.com/mathieurobin1/image/upload/v1566465531/New_pics/English/jaguar_E_type_Serie_2.jpg", content: "The Jaguar E-Type, or the Jaguar XK-E for the North American market, is a British sports car that was manufactured by Jaguar Cars Ltd between 1961 and 1975. Its combination of beauty, high performance, and competitive pricing established the model as an icon of the motoring world. The E-Type 150 mph (241 km/h) top speed, sub-7-second 0 to 60 mph (97 km/h) acceleration, monocoque construction, disc brakes, rack-and-pinion steering, and independent front and rear suspension distinguished the car and spurred industry-wide changes.")


# Danziger Str. 60, 10435 Berlin
# Sredzkistraße 43, 10435 Berlin
# Kastanienallee 82, 10435 Berlin
# Kollwitzstraße 37, 10405 Berlin
# Fehrbelliner Str. 17, 10119 Berlin

# 1 family guy , 1 kid, want a bigger flat in Prenzlaeur Berg, 3 rooms
# 1 60 years old, 2 room,
