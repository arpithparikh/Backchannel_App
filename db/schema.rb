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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130925061013) do

  create_table "categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "logins", :force => true do |t|
    t.string   "pwd"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "logins", ["user_id"], :name => "index_logins_on_user_id"

  create_table "posts", :force => true do |t|
    t.integer  "post_id"
    t.text     "title"
    t.text     "post_content"
    t.datetime "last_access_timestamp"
    t.datetime "posted_date"
    t.integer  "category_id"
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "posts", ["category_id"], :name => "index_posts_on_category_id"
  add_index "posts", ["tag_id"], :name => "index_posts_on_tag_id"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "replies", :force => true do |t|
    t.text     "reply"
    t.integer  "post_id"
    t.integer  "user_id"
    t.integer  "reply_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "replies", ["post_id"], :name => "index_replies_on_post_id"
  add_index "replies", ["user_id"], :name => "index_replies_on_user_id"

  create_table "tags", :force => true do |t|
    t.integer  "tag_id"
    t.string   "tag_name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tags", ["user_id"], :name => "index_tags_on_user_id"

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email_id"
    t.integer  "phone"
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vote_posts", :force => true do |t|
    t.integer  "vote_post_count"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "vote_posts", ["post_id"], :name => "index_vote_posts_on_post_id"
  add_index "vote_posts", ["user_id"], :name => "index_vote_posts_on_user_id"

  create_table "vote_replies", :force => true do |t|
    t.integer  "vote_reply_count"
    t.integer  "reply_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "vote_replies", ["reply_id"], :name => "index_vote_replies_on_reply_id"
  add_index "vote_replies", ["user_id"], :name => "index_vote_replies_on_user_id"

end
