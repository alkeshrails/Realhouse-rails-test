# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_25_111447) do

  create_table "commecials", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "shops"
    t.integer "units"
    t.integer "sqmt"
    t.integer "parking"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id"
    t.string "image"
    t.index ["manager_id"], name: "index_commecials_on_manager_id"
  end

  create_table "complex_buildings", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "units"
    t.integer "sqmt"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id"
    t.string "image"
    t.index ["manager_id"], name: "index_complex_buildings_on_manager_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "rooms"
    t.integer "sqmt"
    t.integer "floors"
    t.boolean "air_cond"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id"
    t.string "image"
    t.index ["manager_id"], name: "index_houses_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_managers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_managers_on_reset_password_token", unique: true
  end

  add_foreign_key "commecials", "managers"
  add_foreign_key "complex_buildings", "managers"
  add_foreign_key "houses", "managers"
end
