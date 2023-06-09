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

ActiveRecord::Schema[7.0].define(version: 2023_05_24_164643) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "allotment_users", force: :cascade do |t|
    t.bigint "admin_id", null: false
    t.bigint "member_id", null: false
    t.bigint "allotment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_allotment_users_on_admin_id"
    t.index ["allotment_id"], name: "index_allotment_users_on_allotment_id"
    t.index ["member_id"], name: "index_allotment_users_on_member_id"
  end

  create_table "allotments", force: :cascade do |t|
    t.integer "size"
    t.string "name"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "delivery_type"
    t.float "delivery_price"
    t.string "delivery_provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kept_plants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "owned_plant_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owned_plant_id"], name: "index_kept_plants_on_owned_plant_id"
    t.index ["user_id"], name: "index_kept_plants_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "listing_title"
    t.string "item_name"
    t.text "description"
    t.float "price"
    t.integer "quantity"
    t.bigint "delivery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_id"], name: "index_listings_on_delivery_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city_name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", id: :serial, force: :cascade do |t|
    t.string "topic"
    t.text "body"
    t.string "received_messageable_type"
    t.bigint "received_messageable_id"
    t.string "sent_messageable_type"
    t.bigint "sent_messageable_id"
    t.boolean "opened", default: false
    t.boolean "recipient_delete", default: false
    t.boolean "sender_delete", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "ancestry"
    t.boolean "recipient_permanent_delete", default: false
    t.boolean "sender_permanent_delete", default: false
    t.datetime "opened_at", precision: nil
    t.index ["ancestry"], name: "index_messages_on_ancestry"
    t.index ["received_messageable_id", "received_messageable_type"], name: "acts_as_messageable_received"
    t.index ["sent_messageable_id", "received_messageable_id"], name: "acts_as_messageable_ids"
    t.index ["sent_messageable_id", "sent_messageable_type"], name: "acts_as_messageable_sent"
  end

  create_table "owned_plants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "plant_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_owned_plants_on_plant_id"
    t.index ["user_id"], name: "index_owned_plants_on_user_id"
  end

  create_table "plant_sittings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "kept_plant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kept_plant_id"], name: "index_plant_sittings_on_kept_plant_id"
    t.index ["user_id"], name: "index_plant_sittings_on_user_id"
  end

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

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "phone_number"
    t.datetime "birthdate"
    t.text "bio"
    t.integer "gardening_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "allotment_users", "allotments"
  add_foreign_key "allotment_users", "users", column: "admin_id"
  add_foreign_key "allotment_users", "users", column: "member_id"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "kept_plants", "owned_plants"
  add_foreign_key "kept_plants", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "listings", "deliveries"
  add_foreign_key "listings", "users"
  add_foreign_key "owned_plants", "plants"
  add_foreign_key "owned_plants", "users"
  add_foreign_key "plant_sittings", "kept_plants"
  add_foreign_key "plant_sittings", "users"
  add_foreign_key "posts", "users"
end
