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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110530173327) do

  create_table "accounts", :force => true do |t|
    t.string   "login_id"
    t.string   "nickname"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ambitions", :force => true do |t|
    t.string   "ambition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", :force => true do |t|
    t.integer  "page_count"
    t.date     "target_month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "contents"
    t.text     "outline"
    t.integer  "account_id"
    t.boolean  "published"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "created_date"
  end

  create_table "pages_tags", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "tag_id"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "comment"
    t.string   "keyword"
    t.datetime "open_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
