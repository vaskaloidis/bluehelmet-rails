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

ActiveRecord::Schema.define(version: 20170702101405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
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

  create_table "payola_affiliates", force: :cascade do |t|
    t.string   "code"
    t.string   "email"
    t.integer  "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_coupons", force: :cascade do |t|
    t.string   "code"
    t.integer  "percent_off"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",      default: true
  end

  create_table "payola_sales", force: :cascade do |t|
    t.string   "email",                limit: 191
    t.string   "guid",                 limit: 191
    t.integer  "product_id"
    t.string   "product_type",         limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "stripe_id"
    t.string   "stripe_token"
    t.string   "card_last4"
    t.date     "card_expiration"
    t.string   "card_type"
    t.text     "error"
    t.integer  "amount"
    t.integer  "fee_amount"
    t.integer  "coupon_id"
    t.boolean  "opt_in"
    t.integer  "download_count"
    t.integer  "affiliate_id"
    t.text     "customer_address"
    t.text     "business_address"
    t.string   "stripe_customer_id",   limit: 191
    t.string   "currency"
    t.text     "signed_custom_fields"
    t.integer  "owner_id"
    t.string   "owner_type",           limit: 100
    t.index ["coupon_id"], name: "index_payola_sales_on_coupon_id", using: :btree
    t.index ["email"], name: "index_payola_sales_on_email", using: :btree
    t.index ["guid"], name: "index_payola_sales_on_guid", using: :btree
    t.index ["owner_id", "owner_type"], name: "index_payola_sales_on_owner_id_and_owner_type", using: :btree
    t.index ["product_id", "product_type"], name: "index_payola_sales_on_product", using: :btree
    t.index ["stripe_customer_id"], name: "index_payola_sales_on_stripe_customer_id", using: :btree
  end

  create_table "payola_stripe_webhooks", force: :cascade do |t|
    t.string   "stripe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_subscriptions", force: :cascade do |t|
    t.string   "plan_type"
    t.integer  "plan_id"
    t.datetime "start"
    t.string   "status"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "stripe_customer_id"
    t.boolean  "cancel_at_period_end"
    t.datetime "current_period_start"
    t.datetime "current_period_end"
    t.datetime "ended_at"
    t.datetime "trial_start"
    t.datetime "trial_end"
    t.datetime "canceled_at"
    t.integer  "quantity"
    t.string   "stripe_id"
    t.string   "stripe_token"
    t.string   "card_last4"
    t.date     "card_expiration"
    t.string   "card_type"
    t.text     "error"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency"
    t.integer  "amount"
    t.string   "guid",                 limit: 191
    t.string   "stripe_status"
    t.integer  "affiliate_id"
    t.string   "coupon"
    t.text     "signed_custom_fields"
    t.text     "customer_address"
    t.text     "business_address"
    t.integer  "setup_fee"
    t.decimal  "tax_percent",                      precision: 4, scale: 2
    t.index ["guid"], name: "index_payola_subscriptions_on_guid", using: :btree
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

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "email",                                               null: false
    t.string   "encrypted_password", limit: 128,                      null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                      null: false
    t.string   "role",                           default: "customer"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
