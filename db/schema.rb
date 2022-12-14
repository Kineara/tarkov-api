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

ActiveRecord::Schema.define(version: 2022_12_20_001322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "weapon_mod_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "weapon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["weapon_id"], name: "index_weapon_mod_categories_on_weapon_id"
  end

  create_table "weapon_mod_category_mods", force: :cascade do |t|
    t.bigint "weapon_mod_category_id", null: false
    t.bigint "weapon_mod_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["weapon_mod_category_id"], name: "index_weapon_mod_category_mods_on_weapon_mod_category_id"
    t.index ["weapon_mod_id"], name: "index_weapon_mod_category_mods_on_weapon_mod_id"
  end

  create_table "weapon_mods", force: :cascade do |t|
    t.string "name"
    t.string "item_type"
    t.string "weight"
    t.string "grid_size"
    t.string "sold_by"
    t.string "recoil_percent"
    t.string "ergonomics"
    t.json "mods_str"
    t.string "accuracy_percent"
    t.string "modes"
    t.string "heat_percent"
    t.string "cooling_percent"
    t.string "durability_burn_percent"
    t.string "muzzle_velocity"
    t.string "sighting_range"
    t.string "refresh_rate"
    t.string "capacity"
    t.string "failure_to_feed_chance"
    t.string "loadunload_speed_modifier_percent"
    t.string "improved_check_accuracy"
    t.string "caliber"
    t.json "accepted_ammunition"
    t.string "loot_experience"
    t.string "examine_experience"
    t.string "check_speed_modifier_percent"
    t.string "slot"
    t.string "default_ammo"
    t.string "accuracy_moa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "item_type"
    t.string "slot"
    t.string "weight"
    t.string "grid_size"
    t.string "sold_by"
    t.string "recoil"
    t.string "effective_distance"
    t.string "ergonomics"
    t.string "firing_modes"
    t.string "rate_of_fire_rpm"
    t.string "accuracy_moa"
    t.string "sighting_range"
    t.string "caliber"
    t.string "default_ammo"
    t.string "muzzle_velocity"
    t.string "default_mag"
    t.json "accepted_ammunition"
    t.json "mods_str"
    t.string "recoil_percent"
    t.string "projectile_speed"
    t.string "damage"
    t.string "penetration_power"
    t.string "armor_damage_percent"
    t.string "explosion_delay"
    t.string "throw_strength"
    t.string "explosion_radius"
    t.string "contusion_radius"
    t.string "fragments_count"
    t.string "loot_experience"
    t.string "examine_experience"
    t.string "smoke_emit_duration"
    t.string "capacity"
    t.string "failure_to_feed_chance"
    t.string "improved_check_accuracy"
    t.string "loadunload_speed_modifier_percent"
    t.string "check_speed_modifier_percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "weapon_mod_categories", "weapons"
  add_foreign_key "weapon_mod_category_mods", "weapon_mod_categories"
  add_foreign_key "weapon_mod_category_mods", "weapon_mods"
end
