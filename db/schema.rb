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

ActiveRecord::Schema.define(version: 2020_02_27_155524) do

  create_table "authorizedstaffs", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_authorizedstaffs_on_user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "name"
    t.text "descrition"
    t.text "content"
    t.date "final_date"
    t.text "comment"
    t.date "final_comment_date"
    t.string "student_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_comments_on_user_id_id"
  end

  create_table "documents", force: :cascade do |t|
    t.text "header"
    t.text "content"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_documents_on_user_id_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.date "closure_date"
    t.date "final_closure_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketing_coordinators", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "user_id"
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "manager"
    t.index ["faculty_id"], name: "index_marketing_coordinators_on_faculty_id"
    t.index ["user_id"], name: "index_marketing_coordinators_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "time"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "address"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_id"
    t.integer "tutor_id"
    t.index ["faculty_id"], name: "index_students_on_faculty_id"
    t.index ["tutor_id"], name: "index_students_on_tutor_id"
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tutors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_student"
    t.boolean "is_tutor"
    t.boolean "is_authorized_staff"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
