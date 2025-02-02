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

ActiveRecord::Schema.define(version: 2022_01_27_210417) do

  create_table "applicants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "listing_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.integer "user_id"
    t.string "buzzword"
  end

  create_table "listings", force: :cascade do |t|
    t.string "job_title"
    t.string "job_description"
    t.integer "hourly_rate"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "hired"
    t.integer "candidate_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "user_id"
    t.integer "listing_id"
    t.string "review_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "position"
    t.string "user_despcription"
    t.string "skills"
    t.string "favorite_quote"
    t.string "favorite_game"
  end

end
