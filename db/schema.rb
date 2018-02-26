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

ActiveRecord::Schema.define(version: 20180218151035) do

  create_table "baskets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "number"
    t.boolean  "donation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "baskets", ["product_id"], name: "index_baskets_on_product_id"
  add_index "baskets", ["user_id"], name: "index_baskets_on_user_id"

  create_table "categorie1s", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorie2s", force: :cascade do |t|
    t.string   "content"
    t.integer  "categorie1_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "categorie2s", ["categorie1_id"], name: "index_categorie2s_on_categorie1_id"

  create_table "categorie3s", force: :cascade do |t|
    t.string   "content"
    t.integer  "categorie2_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "categorie3s", ["categorie2_id"], name: "index_categorie3s_on_categorie2_id"

  create_table "classifications", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "followers", ["product_id"], name: "index_followers_on_product_id"
  add_index "followers", ["user_id"], name: "index_followers_on_user_id"

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "inquiries", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "content"
    t.string   "answer"
    t.string   "email"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "inquiries", ["user_id"], name: "index_inquiries_on_user_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "phone"
    t.string   "phone2"
    t.text     "product_ids"
    t.text     "basket_ids"
    t.text     "numbers"
    t.text     "donations"
    t.integer  "product_price"
    t.integer  "donation_price"
    t.integer  "total_price"
    t.string   "address"
    t.string   "address_detail"
    t.string   "address_number"
    t.string   "payment"
    t.string   "invoice"
    t.string   "parcel"
    t.string   "parcel_number"
    t.string   "payment_option"
    t.boolean  "agreement"
    t.string   "content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "classification_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "posts", ["classification_id"], name: "index_posts_on_classification_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "img"
    t.string   "name"
    t.integer  "price"
    t.integer  "weight"
    t.integer  "categorie1_id"
    t.integer  "categorie2_id"
    t.integer  "categorie3_id"
    t.text     "content"
    t.integer  "discount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "products", ["categorie1_id"], name: "index_products_on_categorie1_id"
  add_index "products", ["categorie2_id"], name: "index_products_on_categorie2_id"
  add_index "products", ["categorie3_id"], name: "index_products_on_categorie3_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "point"
    t.string   "marketing_email"
    t.string   "marketing_phone"
    t.string   "agreement"
    t.string   "information"
    t.string   "marketing"
    t.integer  "donation_point"
    t.string   "profile_img"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
