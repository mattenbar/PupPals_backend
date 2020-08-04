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

ActiveRecord::Schema.define(version: 2020_08_04_114557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "followed_user_id"
    t.index ["followed_user_id"], name: "index_follows_on_followed_user_id"
    t.index ["user_id", "followed_user_id"], name: "index_follows_on_user_id_and_followed_user_id", unique: true
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "owner"
    t.string "email"
    t.string "password_digest"
    t.string "pet_name"
    t.text "about"
    t.string "breed"
    t.string "size"
    t.string "sex"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
  end

end
