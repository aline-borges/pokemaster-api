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

ActiveRecord::Schema.define(version: 2020_10_06_185258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemon_teams", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_pokemon_teams_on_pokemon_id"
    t.index ["team_id"], name: "index_pokemon_teams_on_team_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "pokemonType"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trainer_id", null: false
    t.index ["trainer_id"], name: "index_teams_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pokemon_teams", "pokemons"
  add_foreign_key "pokemon_teams", "teams"
  add_foreign_key "teams", "trainers"
end
