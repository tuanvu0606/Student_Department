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

ActiveRecord::Schema.define(version: 2019_01_30_101737) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "ahoy_events", force: :cascade do |t|
    t.integer "visit_id"
    t.integer "user_id"
    t.string "name"
    t.text "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.integer "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "inventory_item_categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.date "warehoused_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "inventory_item_category_id"
    t.integer "inventory_model_id"
    t.string "image"
    t.integer "quantity"
    t.integer "sold_quantity"
    t.index ["inventory_item_category_id"], name: "index_inventory_items_on_inventory_item_category_id"
    t.index ["inventory_model_id"], name: "index_inventory_items_on_inventory_model_id"
  end

  create_table "inventory_models", force: :cascade do |t|
    t.string "inventory_model_name"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "sold_quantity"
  end

  create_table "order_line_items", force: :cascade do |t|
    t.integer "inventory_item_id"
    t.integer "order_id"
    t.integer "order_item_qty", default: 1
    t.float "total_price"
    t.float "order_line_item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "fixed_item_price"
    t.index ["inventory_item_id"], name: "index_order_line_items_on_inventory_item_id"
    t.index ["order_id"], name: "index_order_line_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.float "total_amount"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cookies"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "specific_items", force: :cascade do |t|
    t.integer "inventory_item_id"
    t.string "serial_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_item_id"], name: "index_specific_items_on_inventory_item_id"
    t.index ["serial_number"], name: "index_specific_items_on_serial_number", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "email", default: "", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
