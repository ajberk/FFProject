# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150430215604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "defenses", force: true do |t|
    t.string  "Team",                  null: false
    t.string  "Opponent",              null: false
    t.integer "Sacks",                 null: false
    t.integer "Interceptions",         null: false
    t.integer "Safeties",              null: false
    t.integer "Fumble_Recoveries",     null: false
    t.integer "Blocks",                null: false
    t.integer "TD",                    null: false
    t.integer "Points_Against",        null: false
    t.integer "Passing_Yards_Against", null: false
    t.integer "Rushing_Yards_Against", null: false
    t.integer "Total_Yards_Against",   null: false
    t.integer "Points",                null: false
    t.integer "Week",                  null: false
  end

  add_index "defenses", ["Opponent"], name: "index_defenses_on_Opponent", using: :btree
  add_index "defenses", ["Points"], name: "index_defenses_on_Points", using: :btree
  add_index "defenses", ["Team"], name: "index_defenses_on_Team", using: :btree

  create_table "kickers", force: true do |t|
    t.string  "Player",                      null: false
    t.string  "Team",                        null: false
    t.string  "Opponent",                    null: false
    t.integer "Extra_Point_Attempts",        null: false
    t.integer "Extra_Points_Made",           null: false
    t.integer "Field_Goal_Attempts",         null: false
    t.integer "Field_Goals_Made",            null: false
    t.integer "Fifty_Plus_Yard_Field_Goals", null: false
    t.integer "Points",                      null: false
    t.integer "Week",                        null: false
  end

  add_index "kickers", ["Opponent"], name: "index_kickers_on_Opponent", using: :btree
  add_index "kickers", ["Points"], name: "index_kickers_on_Points", using: :btree
  add_index "kickers", ["Team"], name: "index_kickers_on_Team", using: :btree

  create_table "quarterbacks", force: true do |t|
    t.string  "Player",                    null: false
    t.string  "Team",                      null: false
    t.string  "Opponent",                  null: false
    t.integer "Passing_Attempts",          null: false
    t.integer "Passing_Completions",       null: false
    t.integer "Passing_Yards",             null: false
    t.integer "Passing_TD",                null: false
    t.integer "Interceptions",             null: false
    t.integer "Passing_2Pt",               null: false
    t.integer "Rushing_Attempts",          null: false
    t.integer "Rushing_Yards",             null: false
    t.integer "Rushing_TD",                null: false
    t.integer "Rushing_2Pt_Conversions",   null: false
    t.integer "Receptions",                null: false
    t.integer "Recieving_Yds",             null: false
    t.integer "Recieving_TD",              null: false
    t.integer "Recieving_2Pt_Conversions", null: false
    t.integer "Fumbles_Lost",              null: false
    t.integer "Fumble_TD",                 null: false
    t.integer "Points",                    null: false
    t.integer "Week",                      null: false
  end

  add_index "quarterbacks", ["Opponent"], name: "index_quarterbacks_on_Opponent", using: :btree
  add_index "quarterbacks", ["Points"], name: "index_quarterbacks_on_Points", using: :btree
  add_index "quarterbacks", ["Team"], name: "index_quarterbacks_on_Team", using: :btree

  create_table "runningbacks", force: true do |t|
    t.string   "Player",                    null: false
    t.string   "Team",                      null: false
    t.string   "Opponent",                  null: false
    t.integer  "Passing_Attempts",          null: false
    t.integer  "Passing_Completions",       null: false
    t.integer  "Passing_Yards",             null: false
    t.integer  "Passing_TD",                null: false
    t.integer  "Interceptions",             null: false
    t.integer  "Passing_2Pt",               null: false
    t.integer  "Rushing_Attempts",          null: false
    t.integer  "Rushing_Yards",             null: false
    t.integer  "Rushing_TD",                null: false
    t.integer  "Rushing_2Pt_Conversions",   null: false
    t.integer  "Receptions",                null: false
    t.integer  "Recieving_Yds",             null: false
    t.integer  "Recieving_TD",              null: false
    t.integer  "Recieving_2Pt_Conversions", null: false
    t.integer  "Fumbles_Lost",              null: false
    t.integer  "Fumble_TD",                 null: false
    t.integer  "Points",                    null: false
    t.integer  "Week",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "runningbacks", ["Opponent"], name: "index_runningbacks_on_Opponent", using: :btree
  add_index "runningbacks", ["Points"], name: "index_runningbacks_on_Points", using: :btree
  add_index "runningbacks", ["Team"], name: "index_runningbacks_on_Team", using: :btree

  create_table "tightends", force: true do |t|
    t.string  "Player",                    null: false
    t.string  "Team",                      null: false
    t.string  "Opponent",                  null: false
    t.integer "Passing_Attempts",          null: false
    t.integer "Passing_Completions",       null: false
    t.integer "Passing_Yards",             null: false
    t.integer "Passing_TD",                null: false
    t.integer "Interceptions",             null: false
    t.integer "Passing_2Pt",               null: false
    t.integer "Rushing_Attempts",          null: false
    t.integer "Rushing_Yards",             null: false
    t.integer "Rushing_TD",                null: false
    t.integer "Rushing_2Pt_Conversions",   null: false
    t.integer "Receptions",                null: false
    t.integer "Recieving_Yds",             null: false
    t.integer "Recieving_TD",              null: false
    t.integer "Recieving_2Pt_Conversions", null: false
    t.integer "Fumbles_Lost",              null: false
    t.integer "Fumble_TD",                 null: false
    t.integer "Points",                    null: false
    t.integer "Week",                      null: false
  end

  add_index "tightends", ["Opponent"], name: "index_tightends_on_Opponent", using: :btree
  add_index "tightends", ["Points"], name: "index_tightends_on_Points", using: :btree
  add_index "tightends", ["Team"], name: "index_tightends_on_Team", using: :btree

  create_table "widerecievers", force: true do |t|
    t.string  "Player",                    null: false
    t.string  "Team",                      null: false
    t.string  "Opponent",                  null: false
    t.integer "Passing_Attempts",          null: false
    t.integer "Passing_Completions",       null: false
    t.integer "Passing_Yards",             null: false
    t.integer "Passing_TD",                null: false
    t.integer "Interceptions",             null: false
    t.integer "Passing_2Pt",               null: false
    t.integer "Rushing_Attempts",          null: false
    t.integer "Rushing_Yards",             null: false
    t.integer "Rushing_TD",                null: false
    t.integer "Rushing_2Pt_Conversions",   null: false
    t.integer "Receptions",                null: false
    t.integer "Recieving_Yds",             null: false
    t.integer "Recieving_TD",              null: false
    t.integer "Recieving_2Pt_Conversions", null: false
    t.integer "Fumbles_Lost",              null: false
    t.integer "Fumble_TD",                 null: false
    t.integer "Points",                    null: false
    t.integer "Week",                      null: false
  end

  add_index "widerecievers", ["Opponent"], name: "index_widerecievers_on_Opponent", using: :btree
  add_index "widerecievers", ["Points"], name: "index_widerecievers_on_Points", using: :btree
  add_index "widerecievers", ["Team"], name: "index_widerecievers_on_Team", using: :btree

end
