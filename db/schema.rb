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

ActiveRecord::Schema.define(version: 2022_12_02_072425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.bigint "handbook_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["handbook_id"], name: "index_categories_on_handbook_id"
  end

  create_table "game_versions", force: :cascade do |t|
    t.string "name"
    t.boolean "current_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "handbooks", force: :cascade do |t|
    t.bigint "game_version_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_version_id"], name: "index_handbooks_on_game_version_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.bigint "category_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "sub_sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "sub_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_category_id"], name: "index_sub_sub_categories_on_sub_category_id"
  end

  add_foreign_key "categories", "handbooks"
  add_foreign_key "handbooks", "game_versions"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "sub_sub_categories", "sub_categories"
end
