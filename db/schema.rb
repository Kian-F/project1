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

ActiveRecord::Schema.define(version: 2020_05_13_094447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.text "name"
    t.text "league"
    t.text "country"
    t.integer "stadium_id"
    t.integer "player_id"
    t.text "manager"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image"
    t.integer "confederation_id"
    t.integer "sportdb_id"
  end

  create_table "clubs_stadia", id: false, force: :cascade do |t|
    t.integer "club_id"
    t.integer "stadium_id"
  end

  create_table "confederations", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "competition"
    t.integer "player_id"
    t.integer "stadium_id"
    t.text "country"
    t.text "league"
    t.integer "total_value"
    t.integer "club_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.text "name"
    t.date "dob"
    t.text "market_value"
    t.text "position"
    t.integer "goals"
    t.integer "club_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image"
    t.text "nationality"
    t.integer "confederation_id"
    t.integer "user_id"
    t.text "team"
  end

  create_table "stadia", force: :cascade do |t|
    t.text "name"
    t.date "built"
    t.integer "club_id"
    t.integer "confederation_id"
    t.text "country"
    t.integer "total_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
