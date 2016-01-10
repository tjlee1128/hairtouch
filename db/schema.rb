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

ActiveRecord::Schema.define(version: 20160110113237) do

  create_table "designers", force: :cascade do |t|
    t.integer  "shop_id"
    t.text     "name"
    t.text     "phone"
    t.text     "start_time"
    t.text     "end_time"
    t.integer  "reservation_type"
    t.text     "main_image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["shop_id"], name: "index_designers_on_shop_id"
  end

  create_table "shopowners", force: :cascade do |t|
    t.text     "email"
    t.text     "password"
    t.text     "name"
    t.text     "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.integer  "shopowner_id"
    t.text     "name"
    t.text     "phone"
    t.text     "start_time"
    t.text     "end_time"
    t.text     "holiday"
    t.text     "address"
    t.text     "main_image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["shopowner_id"], name: "index_shops_on_shopowner_id"
  end

end