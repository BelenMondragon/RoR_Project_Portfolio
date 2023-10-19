# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_18_202542) do
  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "creation_date"
    t.string "language"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_type_id", null: false
    t.index ["skill_type_id"], name: "index_projects_on_skill_type_id"
  end

  create_table "skill_types", force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_type_id", null: false
    t.index ["skill_type_id"], name: "index_skills_on_skill_type_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_id", null: false
    t.integer "project_id", null: false
    t.integer "user_type_id", null: false
    t.index ["project_id"], name: "index_users_on_project_id"
    t.index ["skill_id"], name: "index_users_on_skill_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "projects", "skill_types"
  add_foreign_key "skills", "skill_types"
  add_foreign_key "users", "projects"
  add_foreign_key "users", "skills"
  add_foreign_key "users", "user_types"
end
