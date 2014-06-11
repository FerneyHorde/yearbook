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

ActiveRecord::Schema.define(version: 20140521220402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheers", force: true do |t|
    t.text     "title"
    t.text     "cheer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days_people", id: false, force: true do |t|
    t.integer "day_id",    null: false
    t.integer "person_id", null: false
  end

  create_table "families", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduates", force: true do |t|
    t.integer  "person_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "graduates", ["person_id"], name: "index_graduates_on_person_id", using: :btree

  create_table "honors", force: true do |t|
    t.integer  "person_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "honors", ["person_id"], name: "index_honors_on_person_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "filename"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "leaders", force: true do |t|
    t.integer  "person_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leaders", ["person_id"], name: "index_leaders_on_person_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.integer  "family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "born_on"
    t.string   "portrait_file_name"
    t.string   "portrait_content_type"
    t.integer  "portrait_file_size"
    t.datetime "portrait_updated_at"
  end

  add_index "people", ["family_id"], name: "index_people_on_family_id", using: :btree

  create_table "poem_pages", force: true do |t|
    t.integer  "number"
    t.text     "lines"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "teachers", force: true do |t|
    t.integer  "person_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["person_id"], name: "index_teachers_on_person_id", using: :btree

  create_table "titles", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "yb_classes", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
