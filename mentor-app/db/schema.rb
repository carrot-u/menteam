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

ActiveRecord::Schema.define(version: 2018_11_05_182209) do

  create_table "pairings", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mentor_id"
    t.integer "mentee_id"
    t.integer "topic_id"
    t.index ["mentee_id"], name: "index_pairings_on_mentee_id"
    t.index ["mentor_id"], name: "index_pairings_on_mentor_id"
    t.index ["topic_id"], name: "index_pairings_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "topic_id"
    t.index ["topic_id"], name: "index_user_roles_on_topic_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.string "email"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
