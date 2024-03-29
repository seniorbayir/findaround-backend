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

ActiveRecord::Schema.define(version: 20150907221927) do

  create_table "companies", force: :cascade do |t|
    t.string  "name",    limit: 255
    t.integer "user_id", limit: 4
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer "user_id",    limit: 4
    t.integer "product_id", limit: 4
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string  "name",       limit: 255
    t.float   "price",      limit: 24,  default: 0.0
    t.integer "company_id", limit: 4
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string  "content",    limit: 255
    t.integer "user_id",    limit: 4
    t.integer "product_id", limit: 4
  end

  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "email",    limit: 255
    t.string "password", limit: 255
  end

end
