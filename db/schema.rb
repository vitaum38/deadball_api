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

ActiveRecord::Schema.define(version: 2020_08_25_230417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "at_bats", force: :cascade do |t|
    t.bigint "pitcher_id", null: false
    t.bigint "batter_id", null: false
    t.bigint "game_id", null: false
    t.bigint "half_inning_id", null: false
    t.bigint "a_team_id", null: false
    t.bigint "d_team_id", null: false
    t.integer "balls"
    t.integer "strikes"
    t.integer "runs"
    t.string "outcome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_team_id"], name: "index_at_bats_on_a_team_id"
    t.index ["batter_id"], name: "index_at_bats_on_batter_id"
    t.index ["d_team_id"], name: "index_at_bats_on_d_team_id"
    t.index ["game_id"], name: "index_at_bats_on_game_id"
    t.index ["half_inning_id"], name: "index_at_bats_on_half_inning_id"
    t.index ["pitcher_id"], name: "index_at_bats_on_pitcher_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "home_team_id"
    t.bigint "away_team_id"
    t.datetime "start"
    t.datetime "end"
    t.integer "home_team_score"
    t.integer "away_team_score"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_games_on_away_team_id"
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
  end

  create_table "half_innings", force: :cascade do |t|
    t.integer "number"
    t.string "position"
    t.integer "runs"
    t.integer "outs"
    t.bigint "game_id", null: false
    t.bigint "a_team_id", null: false
    t.bigint "d_team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_team_id"], name: "index_half_innings_on_a_team_id"
    t.index ["d_team_id"], name: "index_half_innings_on_d_team_id"
    t.index ["game_id"], name: "index_half_innings_on_game_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "shirt_name"
    t.date "birthdate"
    t.float "base_avg"
    t.float "era"
    t.float "fielding"
    t.string "main_hand"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_players_on_name"
    t.index ["shirt_name"], name: "index_players_on_shirt_name"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.string "logo_url"
    t.jsonb "mock_lineup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "at_bats", "games"
  add_foreign_key "at_bats", "half_innings"
  add_foreign_key "at_bats", "players", column: "batter_id"
  add_foreign_key "at_bats", "players", column: "pitcher_id"
  add_foreign_key "at_bats", "teams", column: "a_team_id"
  add_foreign_key "at_bats", "teams", column: "d_team_id"
  add_foreign_key "games", "teams", column: "away_team_id"
  add_foreign_key "games", "teams", column: "home_team_id"
  add_foreign_key "half_innings", "games"
  add_foreign_key "half_innings", "teams", column: "a_team_id"
  add_foreign_key "half_innings", "teams", column: "d_team_id"
end
