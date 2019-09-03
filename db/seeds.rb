## This file should contain all the record creation needed to seed the database with its default values.
## The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
##
## Examples:
##   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
##   Character.create(name: 'Luke', movie: movies.first)#
#


#Viewing.destroy_all
# puts "destroy all users"#

#Flat.destroy_all
#puts "destroy all flats"#

#User.destroy_all
# puts "destroy all users"#

## USERS
#u1 = User.create!(first_name: "John", last_name: "Doe", email: "test1@example.com",
#password: "123456", property_type: "Flat", bathroom: 1, bedroom: 2,
#district: "Prenzlaeur Berg", total_rent:1400)
#u2 = User.create!(first_name: "test2", last_name: "2", email: "test2@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte", total_rent:950)
#u3 = User.create!(first_name: "test3", last_name: "3", email: "test3@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
#district: "Prenzlaeur Berg", total_rent:1250)
#u4 = User.create!(first_name: "test4", last_name: "4", email: "test4@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
#district: "Prenzlaeur Berg", total_rent:1280)
#u5 = User.create!(first_name: "test5", last_name: "5", email: "test5@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
#district: "Prenzlaeur Berg", total_rent:1300)#
#

#u6 = User.create!(first_name: "test6", last_name: "6", email: "test6@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte ", total_rent:950)
#u7 = User.create!(first_name: "test7", last_name: "7", email: "test7@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte", total_rent:900)
#u8 = User.create!(first_name: "test8", last_name: "8", email: "test8@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte", total_rent:850)
#u9 = User.create!(first_name: "test9", last_name: "9", email: "test9@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte", total_rent:900)
#u10 = User.create!(first_name: "James", last_name: "Bond", email: "test10@example.com",
#password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
#district: "Mitte", total_rent:950)#
#

## FLATS
#f1 = Flat.create!(address: "Danziger Str. 60, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
#property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
#year_construction: "1960-1990",square_meter: 80, title: "Beautiful 2 bedroom Flat in PB",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent: 1400, user_id:u1.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_1_Prenzlaeur_Berg_k991w1.jpg")#

#f2 = Flat.create!(address: "Sredzkistraße 43, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
#property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
#year_construction: "1960-1990",square_meter: 84,title: "Well located Flat in Prenzlaeur Berg",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent: 1350, user_id:u2.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Prenzlaeur_Berg_rg6o9f.jpg")#

#f3 = Flat.create!(address: "Kastanienallee 82, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
#property_type:"Flat", bathroom: 1, bedroom: 2, type_heating:"Electricity",
#year_construction: "1960-1990",square_meter: 85, title: "2 bedroom flat 1 min from Ubhan",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:1250, user_id:u3.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_3_Prenzlaeur_Berg_ak5w7r.jpg")#

#f4 = Flat.create!(address: "Kollwitzstraße 37, 10405 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
#property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
#year_construction: "1960-1990",square_meter: 82, title: "Amazing flat with 2 bedroom and rooftop",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:1280, user_id:u4.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Prenzlaeur_Berg_u2mfyc.jpg")#

#f5 = Flat.create!(address: "Fehrbelliner Str. 17, 10119 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
#property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
#year_construction: "1960-1990",square_meter: 85,title: "Bright flat with  2 bedroom and balcony",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:1300, user_id:u5.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Prenzlaeur_Berg_i5sjzp.jpg")
#puts "users created"#
#

#f6 = Flat.create!(address: "Kieler Str. 2, 10115 Berlin", city: "Berlin", district:"Mitte",
#property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
#year_construction: "1945-1960",square_meter: 55,title: "Well located flat in the heart of Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent: 950, user_id:u6.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084951/Flinder/Flat_1_Mitte_s0y1yi.jpg")#

#f7 = Flat.create!(address: "Lehrter Str. 30, 10557 Berlin", city: "Berlin", district:"Mitte",
#property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
#year_construction: "1945-1960",square_meter: 50,title: "Central flat in Mitte with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:900, user_id:u7.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Mitte_dwfbqj.jpg")#

#f8 = Flat.create!(address: "Chausseestraße 8, 10115 Berlin", city: "Berlin", district:"Mitte",
#property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
#year_construction: "1945-1960",square_meter: 52,title: "Fully renovated flat in Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:850, user_id:u8.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084948/Flinder/Flat_3_Mitte_cu0gh3.jpg")#

#f9 = Flat.create!(address: "Schumannstraße 13a, 10117 Berlin", city: "Berlin", district:"Mitte",
#property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
#year_construction: "1945-1960",square_meter:55, title: "Shiny flat in central Berlin with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:900, user_id:u9.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg")#

#f10 = Flat.create!(address: "Luisenstraße 19, 10117 Berlin", city: "Berlin", district:"Mitte",
#property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
#year_construction: "1945-1960",square_meter: 55, title: "Unique flat in central location with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
#vacant_from:"2019/10/1",rent:950, user_id:u10.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Mitte_bgwwbr.jpg")
#puts "flats created"#

## need to mention that user_id u1 has the flat
## u1 like the flat f2 who belongs to u2
## u2 like the flat f7 who belongs to u1#

## u1 = 1 family guy , 1 kid, want a bigger flat in Prenzlaeur Berg, 2 bedrooms
## u2 = 1 60 years old, current flat 2 bedroom, too big and expensive, want a 1 bedroom flat
## u1(f2) match with u2(f7)#

#Viewing.create!(user:u1, flat:f6, like:false)
#Viewing.create!(user:u1, flat:f7, like:false)
#Viewing.create!(user:u1, flat:f2, like:true)
#Viewing.create!(user:u1, flat:f8, like:false)
#Viewing.create!(user:u1, flat:f1, like:false)#

#Viewing.create!(user:u2, flat:f1, like:false)
#Viewing.create!(user:u2, flat:f2, like:false)
#Viewing.create!(user:u2, flat:f7, like:true)
#Viewing.create!(user:u2, flat:f3, like:false)
#Viewing.create!(user:u2, flat:f4, like:false)#

## Danziger Str. 60, 10435 Berlin
## Sredzkistraße 43, 10435 Berlin
## Kastanienallee 82, 10435 Berlin
## Kollwitzstraße 37, 10405 Berlin
## Fehrbelliner Str. 17, 10119 Berlin

Photo.destroy_all
pho = Photo.new(flat_id: 3)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg"
pho.save!
pho = Photo.new(flat_id: 4)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg"
pho.save!
pho = Photo.new(flat_id: 2)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg"
pho.save!
pho = Photo.new(flat_id: 1)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg"
pho.save!
pho = Photo.new(flat_id: 5)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg"
#Photo.create!(flat_id: 4, photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg")
#Photo.create!(flat_id: 4, photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567084948/Flinder/Flat_3_Mitte_cu0gh3.jpg")
pho.save!
=======
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Match.destroy_all
#  puts "destroy all matches"

# Viewing.destroy_all
#  puts "destroy all users"

# Flat.destroy_all
# puts "destroy all flats"

# User.destroy_all
#  puts "destroy all users"
# # USERS
# u1 = User.create!(first_name: "John", last_name: "Doe", email: "test1@example.com",
# password: "123456", property_type: "Flat", bathroom: 1, bedroom: 2,
# district: "Prenzlaeur Berg", total_rent:1400)
# u2 = User.create!(first_name: "Maria", last_name: "Mueller", email: "test2@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte", total_rent:950)
# u3 = User.create!(first_name: "Peter", last_name: "Parker", email: "test3@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
# district: "Prenzlaeur Berg", total_rent:1250)
# u4 = User.create!(first_name: "Matthew", last_name: "Jones", email: "test4@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
# district: "Prenzlaeur Berg", total_rent:1280)
# u5 = User.create!(first_name: "Paul", last_name: "Sinner", email: "test5@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
# district: "Prenzlaeur Berg", total_rent:1300)


# u6 = User.create!(first_name: "Isaac", last_name: "Fish", email: "test6@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte ", total_rent:950)
# u7 = User.create!(first_name: "Carl", last_name: "Ruegge", email: "test7@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte", total_rent:900)
# u8 = User.create!(first_name: "Frank", last_name: "Last", email: "test8@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte", total_rent:850)
# u9 = User.create!(first_name: "Julia", last_name: "Friedrich", email: "test9@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte", total_rent:900)
# u10 = User.create!(first_name: "Lisa", last_name: "Bond", email: "test10@example.com",
# password: "123456", property_type: "Flat",bathroom: 1, bedroom: 1,
# district: "Mitte", total_rent:950)


# # FLATS
# f1 = Flat.create!(address: "Danziger Str. 60, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
# property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
# year_construction: "1960-1990",square_meter: 80, title: "Beautiful 2 bedroom Flat in PB",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent: 1400, user_id:u1.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_1_Prenzlaeur_Berg_k991w1.jpg")

# f2 = Flat.create!(address: "Sredzkistraße 43, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
# property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
# year_construction: "1960-1990",square_meter: 84,title: "Well located Flat in Prenzlaeur Berg",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent: 1350, user_id:u2.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Prenzlaeur_Berg_rg6o9f.jpg")

# f3 = Flat.create!(address: "Kastanienallee 82, 10435 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
# property_type:"Flat", bathroom: 1, bedroom: 2, type_heating:"Electricity",
# year_construction: "1960-1990",square_meter: 85, title: "2 bedroom flat 1 min from Ubhan",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:1250, user_id:u3.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_3_Prenzlaeur_Berg_ak5w7r.jpg")

# f4 = Flat.create!(address: "Kollwitzstraße 37, 10405 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
# property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
# year_construction: "1960-1990",square_meter: 82, title: "Amazing flat with 2 bedroom and rooftop",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:1280, user_id:u4.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Prenzlaeur_Berg_u2mfyc.jpg")

# f5 = Flat.create!(address: "Fehrbelliner Str. 17, 10119 Berlin", city: "Berlin", district:"Prenzlaeur Berg",
# property_type:"Flat", bathroom: 1, bedroom:2, type_heating:"Electricity",
# year_construction: "1960-1990",square_meter: 85,title: "Bright flat with  2 bedroom and balcony",description:"This beautiful flat is located in the heart of Prenzlaeur Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:1300, user_id:u5.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Prenzlaeur_Berg_i5sjzp.jpg")
# puts "users created"


# f6 = Flat.create!(address: "Kieler Str. 2, 10115 Berlin", city: "Berlin", district:"Mitte",
# property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
# year_construction: "1945-1960",square_meter: 55,title: "Well located flat in the heart of Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent: 950, user_id:u6.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084951/Flinder/Flat_1_Mitte_s0y1yi.jpg")

# f7 = Flat.create!(address: "Lehrter Str. 30, 10557 Berlin", city: "Berlin", district:"Mitte",
# property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
# year_construction: "1945-1960",square_meter: 50,title: "Central flat in Mitte with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:900, user_id:u7.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Mitte_dwfbqj.jpg")

# f8 = Flat.create!(address: "Chausseestraße 8, 10115 Berlin", city: "Berlin", district:"Mitte",
# property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
# year_construction: "1945-1960",square_meter: 52,title: "Fully renovated flat in Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:850, user_id:u8.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084948/Flinder/Flat_3_Mitte_cu0gh3.jpg")

# f9 = Flat.create!(address: "Schumannstraße 13a, 10117 Berlin", city: "Berlin", district:"Mitte",
# property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
# year_construction: "1945-1960",square_meter:55, title: "Shiny flat in central Berlin with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:900, user_id:u9.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg")

# f10 = Flat.create!(address: "Luisenstraße 19, 10117 Berlin", city: "Berlin", district:"Mitte",
# property_type:"Flat", bathroom:1, bedroom:1, type_heating:"Electricity",
# year_construction: "1945-1960",square_meter: 55, title: "Unique flat in central location with 1 bedroom",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
# vacant_from:"2019/10/1",rent:950, user_id:u10.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Mitte_bgwwbr.jpg")
# puts "flats created"

# # need to mention that user_id u1 has the flat
# # u1 like the flat f2 who belongs to u2
# # u2 like the flat f7 who belongs to u1

# # u1 = 1 family guy , 1 kid, want a bigger flat in Prenzlaeur Berg, 2 bedrooms
# # u2 = 1 60 years old, current flat 2 bedroom, too big and expensive, want a 1 bedroom flat
# # u1(f2) match with u2(f7)

# Viewing.create!(user:u1, flat:f6, like:false)
# Viewing.create!(user:u1, flat:f7, like:false)
# Viewing.create!(user:u1, flat:f2, like:true)
# Viewing.create!(user:u1, flat:f8, like:false)
# Viewing.create!(user:u1, flat:f1, like:false)

# Viewing.create!(user:u2, flat:f1, like:false)
# Viewing.create!(user:u2, flat:f2, like:false)
# Viewing.create!(user:u2, flat:f7, like:true)
# Viewing.create!(user:u2, flat:f3, like:false)
# Viewing.create!(user:u2, flat:f4, like:false)

# Danziger Str. 60, 10435 Berlin
# Sredzkistraße 43, 10435 Berlin
# Kastanienallee 82, 10435 Berlin
# Kollwitzstraße 37, 10405 Berlin
# Fehrbelliner Str. 17, 10119 Berlin

