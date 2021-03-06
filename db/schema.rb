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

ActiveRecord::Schema.define(version: 2018_05_25_150004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advices", force: :cascade do |t|
    t.text "advice"
    t.string "category"
    t.string "weather_category"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "neighborhood"
    t.string "zip_code", array: true
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.text "street_address"
    t.text "cross_street"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.text "formatted_address"
    t.text "image_url"
    t.string "foursquare_id"
    t.string "category"
    t.string "weather_category"
    t.integer "neighborhood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.index ["neighborhood_id"], name: "index_places_on_neighborhood_id"
  end

end
