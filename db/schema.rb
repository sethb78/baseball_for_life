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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120922181029) do

  create_table "history_teams", :force => true do |t|
    t.string   "Year"
    t.string   "FullName"
    t.string   "LastName"
    t.string   "Record"
    t.integer  "Wins"
    t.integer  "Losses"
    t.integer  "Ties"
    t.string   "Percent"
    t.string   "GamesBehind"
    t.string   "Playoffs"
    t.string   "RegularSeasonFinish"
    t.string   "PlayoffFinish"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "history_years", :force => true do |t|
    t.integer  "year"
    t.string   "first"
    t.string   "second"
    t.string   "third"
    t.string   "regular_season_champ"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "keepers", :force => true do |t|
    t.string   "Last"
    t.string   "First"
    t.string   "string"
    t.string   "Position"
    t.string   "Year1"
    t.integer  "Year2"
    t.integer  "Year3"
    t.integer  "Year4"
    t.integer  "YearsKept"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "FullName"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Card"
    t.text     "Bio"
    t.string   "Email"
    t.string   "Twitter"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "power_rankings", :force => true do |t|
    t.integer  "Week"
    t.string   "Date"
    t.integer  "Rank"
    t.string   "Team"
    t.string   "Record"
    t.integer  "LastWeek"
    t.string   "Move"
    t.text     "Comments"
    t.text     "Stud"
    t.text     "Dud"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
