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

ActiveRecord::Schema.define(:version => 20131007164538) do

  create_table "podcasts", :force => true do |t|
    t.string   "title"
    t.integer  "duration"
    t.text     "description"
    t.text     "notes"
    t.string   "audio_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "ogg_audio_url"
  end

  create_table "speakers", :force => true do |t|
    t.string   "name",                :null => false
    t.string   "position"
    t.string   "twitter_handle"
    t.string   "linkedin_id"
    t.string   "github_handle"
    t.string   "email"
    t.text     "bio",                 :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "display_order"
    t.boolean  "visible"
  end

end
