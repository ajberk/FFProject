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

ActiveRecord::Schema.define(version: 20150501222333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "positions", force: true do |t|
    t.string  "player"
    t.string  "position"
    t.string  "team"
    t.string  "opponent"
    t.integer "passing_attempts"
    t.integer "passing_completions"
    t.integer "passing_yards"
    t.integer "passing_td"
    t.integer "tnterceptions"
    t.integer "passing_2Pt"
    t.integer "rushing_attempts"
    t.integer "rushing_yards"
    t.integer "rushing_td"
    t.integer "rushing_2Pt_conversions"
    t.integer "receptions"
    t.integer "recieving_yds"
    t.integer "recieving_td"
    t.integer "recieving_2Pt_conversions"
    t.integer "fumbles_lost"
    t.integer "fumble_td"
    t.integer "points"
    t.integer "week"
    t.integer "sacks"
    t.integer "interceptions"
    t.integer "safeties"
    t.integer "fumble_recoveries"
    t.integer "blocks"
    t.integer "defensive_td"
    t.integer "points_against"
    t.integer "passing_yards_against"
    t.integer "rushing_yards_against"
    t.integer "total_yards_against"
    t.integer "extra_point_attempts"
    t.integer "extra_points_made"
    t.integer "field_goal_attempts"
    t.integer "field_goals_made"
    t.integer "fifty_plus_yard_field_goals"
  end

end
