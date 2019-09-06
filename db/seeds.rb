## This file should contain all the record creation needed to seed the database with its default values.
## The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

## Examples:
##   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
##   Character.create(name: 'Luke', movie: movies.first)#

# USERS
  # Jurgen is user number 1 - OK
  # Angela is user number 3 - OK

# PROFILES
  # Profile 1 Jurgen - OK
  # Profile 2 - 50/60 years old - OK
    # Required seed
      # 1 - Profile Picture - OK
      # 2 - Profile Description - 0K
      # 3 - Update all test names (from user 1 to user 10) - OK

# FLATS
  # Flat 1 (owner Jurgen)=> 2 room - Mitte - 1000 euros - OK
  # Flat 3 (owner Angela) => 3 room (2 bedroom) - PB - 1400 euros - OK

      # Required seed
        # Flat picture (1-Living Room, 2 - Bedroom, 3-Kitchen , 4- Outside)
        # Flat Title
        # Flat Description
        # 4 key search (sm) (1-District, 2- Square meters, 3- Price, )
        # Adress


# MATCH
  # user 1 (Jurgen who has flat 1) MATCH with user 3 (Angela who has flat 3)

# OTHER TO BE DONE
  # Add some fun pictures
  # Update database (Mathieu)
  # 3 pictures for the Caroussel - To be done


Photo.destroy_all
puts "destroy all photos"

Match.destroy_all
puts "destroy all matches"

Viewing.destroy_all
puts "destroy all viewings"

Flat.destroy_all
puts "destroy all flats"

User.destroy_all
puts "destroy all users"



# USERS
u2 = User.create!(first_name: "Jürgen", last_name: "Nguyen", email: "juergen@example.com",
password: "123456", property_type: "Flat", bathroom: 1, bedroom: 3,
district: "Prenzlauer Berg", total_rent:1400,
profile_description: "My Name is Juergen. I am work as full-stack-developer in Berlin. Now my wife is pregant in in her 8 months and want to find some nice new home in Prenzlauer Berg. I am looking forward to swap my home with yours.",
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567674759/Flinder/Jurgen_Profile_Picture_Test_z1jl58.jpg")

u8 = User.create!(first_name: "Angela", last_name: "Merkel", email: "angela@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Mitte", total_rent:1000,
profile_description: "My name is Angela, I am going to loose my job soon and I need to reduce my lifestyle. I have a 3 room flat but I do not really need them anymore.",
profile_photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567674573/Flinder/Angela_profile_picture_jnjnbz.jpg")


u1 = User.create!(first_name: "Annabel", last_name: "Austin", email: "annabel@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 3,
district: "Prenzlauer Berg", total_rent:1400,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678165/Flinder/Profile%20Photo/Fake_Profile_1_qnya5k.jpg")
u4 = User.create!(first_name: "Tom", last_name: "Hubbard", email: "tom@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 3,
district: "Prenzlauer Berg", total_rent:1200,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_3_v13lrn.jpg")
u5 = User.create!(first_name: "Laura", last_name: "Endo", email: "laura@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 3,
district: "Prenzlauer Berg", total_rent:1300,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678165/Flinder/Profile%20Photo/Fake_Profile_2_orb6ir.jpg")
u6 = User.create!(first_name: "Bob", last_name: "Roberson", email: "bob@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 3,
district: "Prenzlauer Berg ", total_rent:1350,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_4_zztgmb.jpg")


u7 = User.create!(first_name: "Timothy", last_name: "Constant", email: "timothy@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Mitte", total_rent:1000,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_5_pikcso.jpg")
u3 = User.create!(first_name: "Felix", last_name: "Marshall", email: "felix@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Mitte", total_rent:850,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_6_emaheo.jpg")
u9 = User.create!(first_name: "Warren", last_name: "Lanier", email: "warren@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Mitte", total_rent:900,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_7_hnndu5.jpg")
u10 = User.create!(first_name: "Vallie", last_name: "Griffin", email: "vallie@example.com",
password: "123456", property_type: "Flat",bathroom: 1, bedroom: 2,
district: "Mitte", total_rent:950,
profile_photo:"https://res.cloudinary.com/mathieurobin1/image/upload/v1567678166/Flinder/Profile%20Photo/Fake_Profile_8_mlaoif.jpg")

puts "users created"


# FLATS

f2 = Flat.create!(address: "Chausseestraße 8, 10115 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 2, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 52,title: "Fully renovated flat in Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:850, user_id:u2.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084948/Flinder/Flat_3_Mitte_cu0gh3.jpg")

f1 = Flat.create!(address: "Sredzkistraße 43, 10435 Berlin", city: "Berlin", district:"Prenzlauer Berg",
property_type:"Flat", bathroom: 1, bedroom:3, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 85,title: "Well located Flat in Prenzlauer Berg",description:"This beautiful flat is located in the heart of Prenzlauer Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 1350, user_id:u1.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Prenzlaeur_Berg_rg6o9f.jpg")

f3 = Flat.create!(address: "Kollwitzstraße 37, 10405 Berlin", city: "Berlin", district:"Prenzlauer Berg",
property_type:"Flat", bathroom: 1, bedroom:3, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 80, title: "Amazing flat with 2 bedroom ",description:"This beautiful flat is located in the heart of Prenzlauer Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1200, user_id:u3.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Prenzlaeur_Berg_u2mfyc.jpg")

f4 = Flat.create!(address: "er Str. 2, 10115 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 1, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 55,title: "Well located flat in Mitte",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 950, user_id:u4.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084951/Flinder/Flat_1_Mitte_s0y1yi.jpg")
f5 = Flat.create!(address: "Fehrbelliner Str. 17, 10119 Berlin", city: "Berlin", district:"Prenzlauer Berg",
property_type:"Flat", bathroom: 1, bedroom:3, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 80,title: "Bright flat with 2 bedroom ",description:"This beautiful flat is located in the heart of Prenzlauer Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1300, user_id:u5.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Prenzlaeur_Berg_i5sjzp.jpg")
f6 = Flat.create!(address: "Kastanienallee 82, 10435 Berlin", city: "Berlin", district:"Prenzlauer Berg",
property_type:"Flat", bathroom: 1, bedroom: 3, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 75, title: "2 bedroom flat 1 min from Ubhan",description:"This beautiful flat is located in the heart of Prenzlauer Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:1250, user_id:u6.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_3_Prenzlaeur_Berg_ak5w7r.jpg")

f8 = Flat.create!(address: "Danziger Str. 60, 10435 Berlin", city: "Berlin", district:"Prenzlauer Berg",
property_type:"Flat", bathroom: 1, bedroom:3, type_heating:"Electricity",
year_construction: "1960-1990",square_meter: 80, title: "Beautiful 2 bedroom Flat in PB",description:"This beautiful flat is located in the heart of Prenzlauer Berg. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent: 1400, user_id:u8.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_7_ml73s2.jpg")


f7 = Flat.create!(address: "Lehrter Str. 30, 10557 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom: 1, bedroom: 2, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 50,title: "Central flat in Mitte ",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:900, user_id:u7.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_2_Mitte_dwfbqj.jpg")
f9 = Flat.create!(address: "Schumannstraße 13a, 10117 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom:1, bedroom:2, type_heating:"Electricity",
year_construction: "1945-1960",square_meter:55, title: "Shiny flat in central Berlin",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:900, user_id:u9.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_4_Mitte_ejzkoa.jpg")
f10 = Flat.create!(address: "Luisenstraße 19, 10117 Berlin", city: "Berlin", district:"Mitte",
property_type:"Flat", bathroom:1, bedroom:2, type_heating:"Electricity",
year_construction: "1945-1960",square_meter: 55, title: "Unique flat in central location",description:"This beautiful flat is located in the heart of Mitte. You are 2 minutes from any public transport, grocery shopping and a lot of bars and restaurant. The appartement is located at the 2d floor and has 2 bedrooms, perfect for a family.",
vacant_from:"2019/10/1",rent:950, user_id:u10.id, photo: "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084950/Flinder/Flat_5_Mitte_bgwwbr.jpg")

puts "flats created"

# need to mention that user_id u1 has the flat
# u1 like the flat f2 who belongs to u2
# u2 like the flat f7 who belongs to u1#

# u1 = 1 family guy , 1 kid, want a bigger flat in Prenzlaeur Berg, 2 bedrooms
# u2 = 1 60 years old, current flat 2 bedroom, too big and expensive, want a 1 bedroom flat
# u1(f2) match with u2(f7)#

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

# ADRESSES
  ## Danziger Str. 60, 10435 Berlin
  ## Sredzkistraße 43, 10435 Berlin
  ## Kastanienallee 82, 10435 Berlin
  ## Kollwitzstraße 37, 10405 Berlin
  ## Fehrbelliner Str. 17, 10119 Berlin

# NAMES
  # Jürgen Nguyen
  # Annabel Austin
  # Angela Merkel
  # Christopher Hubbard
  # Laura Endo
  # Bob Roberson
  # Timothy Constant
  # Felix Marshall
  # Warren Lanier
  # Vallie Griffin


# PB outside flat = https://res.cloudinary.com/mathieurobin1/image/upload/v1567084949/Flinder/Flat_1_Prenzlaeur_Berg_k991w1.jpg
# PB outside flat = https://res.cloudinary.com/mathieurobin1/image/upload/v1567084791/Flat_5_Prenzlaeur_Berg_u6cgqc.jpg


pho = Photo.new(flat: f1)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084795/Flat_2_Prenzlaeur_Berg_myuyfa.jpg"
pho.save!

pho = Photo.new(flat: f1)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_9_qhlxrj.jpg"
pho.save!
pho = Photo.new(flat: f1)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_8_w2nxyg.jpg"
pho.save!



pho = Photo.new(flat: f2)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677716/Flinder/Living%20Room/Living_room_12_ayfdk7.jpg"
pho.save!
pho = Photo.new(flat: f3)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084790/Flat_3_Prenzlaeur_Berg_rmdik7.jpg"
pho.save!
pho = Photo.new(flat: f4)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567084790/Flat_4_Prenzlaeur_Berg_srydfj.jpg"
pho.save!
pho = Photo.new(flat: f5)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677716/Flinder/Living%20Room/Living_room_11_o4sh1r.jpg"
pho.save!

pho = Photo.new(flat: f6)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_7_ml73s2.jpg"
pho.save!
pho = Photo.new(flat: f7)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677716/Flinder/Living%20Room/Living_room_10_a5fpbx.jpg"
pho.save!
pho = Photo.new(flat: f8)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677716/Flinder/Living%20Room/Living_room_13_nqsaur.jpg"
pho.save!
pho = Photo.new(flat: f9)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_9_qhlxrj.jpg"
pho.save!
pho = Photo.new(flat: f10)
pho.remote_photo_url = "https://res.cloudinary.com/mathieurobin1/image/upload/v1567677704/Flinder/Living%20Room/Living_room_8_w2nxyg.jpg"
pho.save!



