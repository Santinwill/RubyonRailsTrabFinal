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

ActiveRecord::Schema.define(version: 2023_10_31_225524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catastrophes", force: :cascade do |t|
    t.integer "catastrophe_code"
    t.string "name"
    t.integer "degree_of_emergency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occurrences", force: :cascade do |t|
    t.integer "occurrence_code"
    t.integer "person_code"
    t.integer "catastrophe_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "person_code"
    t.string "name"
    t.string "identification_number"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "complement"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipients", force: :cascade do |t|
    t.integer "family_quantity"
    t.integer "liter_of_water"
    t.integer "basic_basket"
    t.integer "tile"
    t.string "measure"
    t.string "unit_of_measurement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
