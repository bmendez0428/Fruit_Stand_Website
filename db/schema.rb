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

ActiveRecord::Schema.define(version: 20180607002117) do

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  create_table "fruitsales", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "fruit_id"
    t.integer  "saleprice"
    t.date     "purchasedate"
    t.string   "status"
    t.integer  "purchase_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "fruitname"
    t.string   "supplier"
    t.string   "color"
    t.text     "description"
    t.integer  "price"
    t.integer  "currentinventoryweight"
    t.string   "imagepath"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "imagepath"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sales", force: :cascade do |t|
    t.float    "revenue"
    t.integer  "fruitsold"
    t.string   "fruittypesold"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "suppliername"
    t.string   "suppliercity"
    t.string   "supplierstate"
    t.string   "fruitselection"
    t.float    "fruitimportweight"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
