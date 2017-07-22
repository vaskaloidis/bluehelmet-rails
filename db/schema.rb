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

ActiveRecord::Schema.define(version: 20170721090222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_messages", force: :cascade do |t|
    t.string   "name"
    t.string   "subject"
    t.string   "phone"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "name"
    t.string   "file"
    t.text     "description"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["name"], name: "index_contents_on_name", unique: true, using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "firstName"
    t.string   "lastName"
    t.string   "company"
    t.integer  "phone"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "demos", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.string   "file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "demos_users", id: false, force: :cascade do |t|
    t.integer "demo_id", null: false
    t.integer "user_id", null: false
    t.index ["demo_id", "user_id"], name: "index_demos_users_on_demo_id_and_user_id", using: :btree
    t.index ["user_id", "demo_id"], name: "index_demos_users_on_user_id_and_demo_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_contents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "content_id"
    t.boolean  "sticky"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_user_contents_on_content_id", using: :btree
    t.index ["user_id"], name: "index_user_contents_on_user_id", using: :btree
  end

  create_table "user_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "firstName"
    t.string   "lastName"
    t.string   "company"
    t.string   "phone"
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

end
