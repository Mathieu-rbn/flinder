# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_27_105212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flat_photos", force: :cascade do |t|
    t.string "data"
    t.bigint "flat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_flat_photos_on_flat_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "bathroom"
    t.integer "bedroom"
    t.string "property_type"
    t.string "street"
    t.string "district"
    t.string "post_code"
    t.string "city"
    t.integer "rent"
    t.integer "rent_extra"
    t.integer "total_rent"
    t.integer "garage"
    t.integer "level_floor"
    t.integer "floors_number"
    t.string "vacant_from"
    t.integer "square_meter"
    t.integer "land"
    t.string "year_construction"
    t.string "type_heating"
    t.integer "extras"
    t.integer "radius"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_flats_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "asker_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asker_id"], name: "index_matches_on_asker_id"
    t.index ["receiver_id"], name: "index_matches_on_receiver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "profile_photo"
    t.string "profession"
    t.integer "people_number"
    t.text "profile_description"
    t.integer "relationship_status"
    t.string "mobile"
    t.integer "bathroom"
    t.integer "bedroom"
    t.string "property_type"
    t.string "street"
    t.string "district"
    t.string "post_code"
    t.string "city"
    t.integer "total_rent"
    t.integer "garage"
    t.integer "level_floor"
    t.integer "floors_number"
    t.string "vacant_from"
    t.integer "square_meter"
    t.integer "land"
    t.string "year_construction"
    t.string "type_heating"
    t.integer "extras"
    t.integer "radius"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewings", force: :cascade do |t|
    t.boolean "like"
    t.bigint "user_id"
    t.bigint "flat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_viewings_on_flat_id"
    t.index ["user_id"], name: "index_viewings_on_user_id"
  end

  add_foreign_key "flat_photos", "flats"
  add_foreign_key "flats", "users"
  add_foreign_key "matches", "flats", column: "asker_id"
  add_foreign_key "matches", "flats", column: "receiver_id"
  add_foreign_key "viewings", "flats"
  add_foreign_key "viewings", "users"
end
