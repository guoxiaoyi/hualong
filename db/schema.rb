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

ActiveRecord::Schema.define(version: 20180314092437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",      limit: 50
    t.string   "tel",        limit: 30
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",      limit: 60
  end

  create_table "kindeditor_assets", force: true do |t|
    t.string   "asset"
    t.integer  "file_size"
    t.string   "file_type"
    t.integer  "owner_id"
    t.string   "asset_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: true do |t|
    t.string   "name",            limit: 50
    t.string   "email",           limit: 100
    t.string   "password_digest", limit: 100
    t.boolean  "supper",                      default: false
    t.boolean  "disabled",                    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name",       limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language"
    t.integer  "cid"
    t.string   "en_title",   limit: 100
    t.string   "zh_title",   limit: 100
    t.string   "jp_title",   limit: 100
    t.string   "ko_title",   limit: 100
  end

  create_table "products", force: true do |t|
    t.string   "name",                limit: 100
    t.text     "summary"
    t.string   "video"
    t.integer  "product_category_id"
    t.text     "inquiry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brief"
    t.string   "en_name",             limit: 100
    t.string   "jp_name",             limit: 100
    t.string   "ko_name",             limit: 100
    t.string   "image_path"
    t.integer  "cid"
  end

  create_table "wizcms_article_article_categories", force: true do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order"
    t.integer  "parent_id"
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_article_articles", force: true do |t|
    t.string   "title",               limit: 100
    t.string   "author",              limit: 50
    t.boolean  "published"
    t.string   "brief",               limit: 200
    t.text     "content"
    t.integer  "article_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cite_key",            limit: 50
    t.string   "copy_from",           limit: 150
    t.datetime "published_at"
    t.boolean  "hotspot"
  end

  create_table "wizcms_article_pages", force: true do |t|
    t.string   "title",        limit: 100
    t.text     "content"
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.string   "keywords"
    t.string   "brief",        limit: 200
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "custom_order"
  end

  create_table "wizcms_link_categories", force: true do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order"
    t.integer  "parent_id"
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_link_links", force: true do |t|
    t.string   "title",        limit: 200
    t.string   "url"
    t.string   "image",        limit: 200
    t.boolean  "published"
    t.integer  "category_id"
    t.string   "cite_key",     limit: 50
    t.integer  "custom_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
