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

ActiveRecord::Schema.define(version: 20200620053839) do

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "comment",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "evaluation", default: 0, null: false
    t.string   "review"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                   null: false
    t.text     "introduction", limit: 65535,             null: false
    t.integer  "price",                                  null: false
    t.integer  "size",                                   null: false
    t.text     "explanation",  limit: 65535,             null: false
    t.integer  "condition",                  default: 0, null: false
    t.boolean  "deal_state",                             null: false
    t.integer  "buyer"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "postage_payers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "postage_payer", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "preparation_days", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "preparation_day", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",       null: false
    t.string   "family_name",      null: false
    t.string   "first_name_kana",  null: false
    t.string   "family_name_kana", null: false
    t.string   "introduction"
    t.integer  "post_code"
    t.string   "prefecture"
    t.string   "city"
    t.string   "house_number"
    t.string   "building_name"
    t.integer  "phone_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sending_destinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",       null: false
    t.string   "family_name",      null: false
    t.string   "first_name_kana",  null: false
    t.string   "family_name_kana", null: false
    t.integer  "post_code",        null: false
    t.integer  "prefecture",       null: false
    t.string   "city",             null: false
    t.string   "house_number",     null: false
    t.string   "building_name"
    t.integer  "phone_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nickname",                            null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
