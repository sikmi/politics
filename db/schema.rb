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

ActiveRecord::Schema.define(version: 10) do

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "gender"
    t.string   "birthday"
    t.string   "postal_code"
    t.string   "prefecture"
    t.string   "city"
    t.string   "district"
    t.string   "building"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "tel3"
    t.string   "party"
    t.string   "office_postal_code"
    t.string   "office_prefecture"
    t.string   "office_city"
    t.string   "office_district"
    t.string   "office_building"
    t.string   "office_tel1"
    t.string   "office_tel2"
    t.string   "office_tel3"
    t.string   "office_fax1"
    t.string   "office_fax2"
    t.string   "office_fax3"
    t.text     "profile"
    t.string   "facebook_id"
    t.string   "rakuten_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "client_id"
    t.integer  "item_id"
    t.integer  "user_id"
    t.text     "body"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["client_id"], name: "index_comments_on_client_id", using: :btree
  add_index "comments", ["item_id"], name: "index_comments_on_item_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"
    t.string   "company_name"
    t.string   "postal_code1"
    t.string   "postal_code2"
    t.string   "prefecture"
    t.string   "city"
    t.string   "district"
    t.string   "building"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "tel3"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_cells", force: true do |t|
    t.integer  "page_id"
    t.string   "category"
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.string   "movie"
    t.string   "link"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_themes", force: true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.text     "html"
    t.text     "css"
    t.text     "attrs"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "site_id"
    t.integer  "page_theme_id"
    t.string   "url"
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.text     "html"
    t.text     "css"
    t.text     "attrs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["page_theme_id"], name: "index_pages_on_page_theme_id", using: :btree
  add_index "pages", ["site_id"], name: "index_pages_on_site_id", using: :btree

  create_table "pvs", force: true do |t|
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_themes", force: true do |t|
    t.text     "layout"
    t.text     "css"
    t.text     "attrs"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.integer  "client_id"
    t.integer  "site_theme_id"
    t.string   "subdomain"
    t.string   "title"
    t.string   "keyword"
    t.text     "description"
    t.text     "layout"
    t.text     "css"
    t.text     "attrs"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["client_id"], name: "index_sites_on_client_id", using: :btree
  add_index "sites", ["site_theme_id"], name: "index_sites_on_site_theme_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "role"
    t.integer  "client_id"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["client_id"], name: "index_users_on_client_id", using: :btree

end
