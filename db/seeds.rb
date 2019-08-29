# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
puts "destroy all flats"

User.destroy_all
 puts "destroy all users"

# USERS
u1 = User.create!(first_name: "test1", last_name: "1", email: "test1@example.com",
password: "123456", property_type: "Flat", bathroom: 1, bedroom: 2,
district: "Prenzlaeur Berg")
u2 = User.create!(first_name: "test2", last_name: "2", email: "test2@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Prenzlaeur Berg")
u3 = User.create!(first_name: "test3", last_name: "3", email: "test3@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Prenzlaeur Berg")
u4 = User.create!(first_name: "test4", last_name: "4", email: "test4@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Prenzlaeur Berg")
u5 = User.create!(first_name: "test5", last_name: "5", email: "test5@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Prenzlaeur Berg")


u6 = User.create!(first_name: "test6", last_name: "6", email: "test6@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
district: "Mitte Berg")
u7 = User.create!(first_name: "test7", last_name: "7", email: "test7@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
district: "Mitte Berg")
u8 = User.create!(first_name: "test8", last_name: "8", email: "test8@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
district: "Mitte Berg")
u9 = User.create!(first_name: "test9", last_name: "9", email: "test9@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
district: "Mitte Berg")
u10 = User.create!(first_name: "test10", last_name: "10", email: "test10@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
district: "Mitte Berg")




# FLATS
Flat.create!(address: "Danziger Str. 60, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 80, title: "Beautiful 2 bedroom Flat in PB",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 1400, user_id:u1.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_1_Prenzlaeur_Berg_k991w1.jpg")

Flat.create!(address: "Sredzkistraße 43, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 84,title: "Well located Flat in Prenzlaeur Berg",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 1400, user_id:u2.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Prenzlaeur_Berg_rg6o9f.jpg")

Flat.create!(address: "Kastanienallee 82, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
property_type:"Flat", bathroom: 1, bedroom: 2, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 85, title: "2 bedroom flat 1 min from Ubhan",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u3.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_3_Prenzlaeur_Berg_ak5w7r.jpg")

Flat.create!(address: "Kollwitzstraße 37, 10405 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 82, title: "Amazing flat with 2 bedroom and rooftop",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u4.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Prenzlaeur_Berg_u2mfyc.jpg")

Flat.create!(address: "Fehrbelliner Str. 17, 10119 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 85,title: "Bright flat with  2 bedroom and balcony",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u5.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Prenzlaeur_Berg_i5sjzp.jpg")
puts "users created"


Flat.create!(address: "Kieler Str. 2, 10115 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 55,title: "Well located flat in the heart of Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 1400, user_id:u6.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084951/Flinder/Flat_1_Mitte_s0y1yi.jpg")

Flat.create!(address: "Lehrter Str. 30, 10557 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 50,title: "Central flat in Mitte with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u7.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Mitte_dwfbqj.jpg")

Flat.create!(address: "Chausseestraße 8, 10115 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 52,title: "Fully renovated flat in Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u8.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084948/Flinder/Flat_3_Mitte_cu0gh3.jpg")

Flat.create!(address: "Schumannstraße 13a, 10117 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter:55, title: "Shiny flat in central Berlin with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u9.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg")

Flat.create!(address: "Luisenstraße 19, 10117 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 55, title: "Unique flat in central location with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1400, user_id:u10.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Mitte_bgwwbr.jpg")
puts "flats created"

# Danziger Str. 60, 10435 Berlin
# Sredzkistraße 43, 10435 Berlin
# Kastanienallee 82, 10435 Berlin
# Kollwitzstraße 37, 10405 Berlin
# Fehrbelliner Str. 17, 10119 Berlin

# 1 family guy , 1 kid, want a bigger flat in Prenzlaeur Berg, 3 rooms
# 1 60 years old, 2 room,
