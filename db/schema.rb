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

ActiveRecord::Schema.define(version: 20171205073303) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "party"
    t.integer "age"
    t.text "politics"
    t.integer "votes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vote_logs_count"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "is_available"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.boolean "is_available"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "title"
    t.string "tel"
    t.string "address"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_logs", force: :cascade do |t|
    t.integer "candidate_id"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_vote_logs_on_candidate_id"
  end

  create_table "ware_houses", force: :cascade do |t|
    t.integer "store_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_ware_houses_on_product_id"
    t.index ["store_id"], name: "index_ware_houses_on_store_id"
  end

end
