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

ActiveRecord::Schema.define(version: 2021_07_25_191139) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emmisions", force: :cascade do |t|
    t.integer "number"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garments", force: :cascade do |t|
    t.string "color"
    t.text "description"
    t.integer "brand_id", null: false
    t.integer "garment_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_garments_on_brand_id"
    t.index ["garment_type_id"], name: "index_garments_on_garment_type_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "sex"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vestments", force: :cascade do |t|
    t.integer "emmision_id", null: false
    t.integer "host_id", null: false
    t.integer "garment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["emmision_id"], name: "index_vestments_on_emmision_id"
    t.index ["garment_id"], name: "index_vestments_on_garment_id"
    t.index ["host_id"], name: "index_vestments_on_host_id"
  end

  add_foreign_key "garments", "brands"
  add_foreign_key "garments", "garment_types"
  add_foreign_key "vestments", "emmisions"
  add_foreign_key "vestments", "garments"
  add_foreign_key "vestments", "hosts"
end
