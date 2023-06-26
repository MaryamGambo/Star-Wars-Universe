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

ActiveRecord::Schema[7.0].define(version: 2023_06_26_045710) do
  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "episode_id"
    t.text "opening_crawl"
    t.string "director"
    t.string "producer"
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "diameter"
    t.string "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "average_lifespan"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "planet"
    t.string "url"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

end
