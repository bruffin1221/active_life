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

ActiveRecord::Schema.define(version: 2021_01_11_022520) do

  create_table "availables", force: :cascade do |t|
    t.string "neighborhood"
    t.string "safety"
    t.string "natural"
    t.string "gym"
    t.string "classes"
    t.string "physical"
    t.string "place"
    t.string "man_made"
  end

  create_table "costs", force: :cascade do |t|
    t.string "activities"
    t.string "gym"
    t.string "track"
    t.string "home"
    t.string "park"
    t.string "nature_area"
    t.string "place"
    t.string "equipment_1"
    t.string "cost_1"
    t.string "equipment_2"
    t.string "cost_2"
    t.string "equipment_3"
    t.string "cost_3"
    t.string "equipment_4"
    t.string "cost_4"
    t.string "afford"
    t.string "eating_out"
    t.string "smoking"
    t.string "drinking"
    t.string "subscription"
    t.string "other_costs"
    t.string "household_chores"
    t.string "children"
    t.string "work"
    t.string "school"
    t.string "other_responsibilities"
    t.string "time"
    t.string "television"
    t.string "social_media"
    t.string "video_games"
    t.string "internet_surfing"
    t.string "other_activities"
    t.string "dedicated"
    t.string "time_spent"
    t.string "time_of_day"
    t.string "days_a_week"
  end

  create_table "goals", force: :cascade do |t|
    t.string "objective_1"
    t.string "strategy_1"
    t.string "tactic_1"
    t.string "tactic_2"
    t.string "objective_2"
    t.string "strategy_2"
    t.string "tactic_3"
    t.string "tactic_4"
    t.string "objective_3"
    t.string "strategy_3"
    t.string "tactic_5"
    t.string "tactic_6"
    t.string "add_goal"
  end

  create_table "motivations", force: :cascade do |t|
    t.string "motivator"
    t.string "motivation_type"
    t.string "pressure"
    t.string "new_motivator"
  end

  create_table "personal_profiles", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "occupation"
    t.integer "weight"
    t.string "height"
  end

  create_table "supports", force: :cascade do |t|
    t.string "engage"
    t.string "walks"
    t.string "sports"
    t.string "park_play"
    t.string "outdoor_activities"
    t.string "other_activities"
    t.string "television"
    t.string "gaming"
    t.string "reading"
    t.string "other_indoor"
    t.string "participate"
    t.string "family_support"
    t.string "friend_activities"
    t.string "friend_physical"
    t.string "f_physical"
    t.string "friend_name"
    t.string "hiking"
    t.string "cycling"
    t.string "walking_paths"
    t.string "rec_centers"
    t.string "groups"
    t.string "group_parts"
    t.string "other"
  end

end
