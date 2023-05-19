# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_19_095245) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.text "description"
    t.text "common_name"
    t.text "latin_name"
    t.text "specie"
    t.text "vegetation"
    t.text "foliage"
    t.text "mature_height"
    t.text "mature_width"
    t.text "maintenance_level"
    t.text "maintenance_description"
    t.text "water_requirement_level"
    t.text "water_requirement_description"
    t.text "cold_resistance_level"
    t.text "cold_resistance_description"
    t.text "density"
    t.text "exposure_level"
    t.text "exposure_description"
    t.text "flowering"
    t.text "planting"
    t.text "harvest"
    t.text "pruning"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

end
