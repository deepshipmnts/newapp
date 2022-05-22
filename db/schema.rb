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

ActiveRecord::Schema.define(version: 2022_05_19_051428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "global_medicines", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "global_medicine_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["global_medicine_id"], name: "index_medicines_on_global_medicine_id"
    t.index ["user_id"], name: "index_medicines_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "password"
    t.integer "phone"
    t.string "email"
    t.string "shopname"
    t.string "shopaddress"
    t.string "address"
    t.string "district"
    t.integer "pincode"
    t.string "features"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
