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

ActiveRecord::Schema.define(version: 20150922035923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "content",         null: false
    t.integer  "user_id",         null: false
    t.integer  "question_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "upvotes_count"
    t.integer  "downvotes_count"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "downvotes", force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "answer_id", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string  "title",       null: false
    t.string  "description", null: false
    t.string  "score"
    t.string  "audio"
    t.integer "user_id",     null: false
    t.integer "category_id"
    t.string  "tags"
  end

  create_table "symbols", force: :cascade do |t|
    t.string  "name",        null: false
    t.float   "left",        null: false
    t.float   "top",         null: false
    t.integer "question_id", null: false
  end

  create_table "upvotes", force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "answer_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
