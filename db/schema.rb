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

ActiveRecord::Schema.define(version: 2022_12_04_133428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.bigint "handbook_id", null: false
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

  create_table "hideout_station_levels", force: :cascade do |t|
    t.bigint "hideout_station_id", null: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hideout_station_id"], name: "index_hideout_station_levels_on_hideout_station_id"
  end

  create_table "hideout_stations", force: :cascade do |t|
    t.bigint "hideout_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hideout_id"], name: "index_hideout_stations_on_hideout_id"
  end

  create_table "hideouts", force: :cascade do |t|
    t.bigint "game_version_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_version_id"], name: "index_hideouts_on_game_version_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "categorization_type"
    t.bigint "categorization_id"
    t.string "name"
    t.string "description"
    t.integer "weight_kg"
    t.boolean "can_be_discarded_in_raid?"
    t.string "can_be_discarded_in_raid_amount"
    t.boolean "is_moddable_in_raid?"
    t.boolean "store_in_secure_container?"
    t.string "size_change"
    t.integer "use_time_seconds"
    t.integer "uses"
    t.string "external_grid_size"
    t.string "internal_grid_size"
    t.string "container_size"
    t.integer "armour_points"
    t.integer "armour_class"
    t.string "material"
    t.string "armor_areas"
    t.integer "richochet_chance"
    t.integer "ergonomics_change"
    t.integer "turning_speed_change"
    t.integer "movement_speed_change"
    t.integer "flashbang_eyes_protection"
    t.integer "recoil_change"
    t.integer "recoil_percent_modifier"
    t.integer "heat_change"
    t.integer "heat_percent_modifier"
    t.integer "cooling_change"
    t.integer "cooling_percent_modifier"
    t.integer "durability_burn_change"
    t.integer "durability_burn_percent_modifier"
    t.integer "loudness_change"
    t.integer "loudness_percent_modifier"
    t.integer "muzzle_velocity_change"
    t.integer "muzzle_velocity_percent_modifier"
    t.integer "accuracy_change"
    t.integer "accuracy_percent_modifier"
    t.float "accuracy_moa"
    t.string "caliber"
    t.integer "ammo_capacity"
    t.integer "load_speed_percent_modifier"
    t.integer "check_speed_percent_modifier"
    t.integer "minimum_check_level"
    t.string "failure_to_feed_chance"
    t.string "misfire_chance"
    t.boolean "is_threaded?"
    t.integer "bullet_velocity"
    t.integer "repair_resource"
    t.boolean "is_thermal?"
    t.boolean "is_nvg?"
    t.boolean "is_laser?"
    t.boolean "is_flashlight?"
    t.boolean "has_switchable_reticle?"
    t.boolean "has_switchable_magnification?"
    t.string "magnifications"
    t.string "reticle_color"
    t.integer "sighting_range"
    t.integer "health_change"
    t.string "health_regeneration_modifier"
    t.integer "hydration_change"
    t.string "hydration_recovery_modifier"
    t.integer "energy_change"
    t.string "energy_recovery_modifier"
    t.integer "stamina_change"
    t.string "stamina_recovery_modifier"
    t.string "max_stamina_modifier"
    t.string "damage_taken_except_head_modifier"
    t.integer "light_bleed_percent_chance"
    t.integer "heavy_bleed_percent_chance"
    t.boolean "removes_radiation_exposure?"
    t.boolean "causes_pain?"
    t.boolean "removes_pain?"
    t.integer "removes_pain_duration_seconds"
    t.boolean "causes_abdominal_bleeding?"
    t.boolean "causes_tunnel_vision?"
    t.boolean "removes_contusion?"
    t.string "carry_limit_modifier"
    t.boolean "causes_tremors?"
    t.boolean "stops_bleeding?"
    t.boolean "removes_fracture?"
    t.boolean "restores_limb?"
    t.integer "hp_resource"
    t.boolean "removes_toxification?"
    t.string "skill_aim_drills_change"
    t.string "skill_assault_rifles_change"
    t.string "skill_dmrs_change"
    t.string "skill_hmgs_change"
    t.string "skill_lmgs_change"
    t.string "skill_melee_change"
    t.string "skill_pistols_change"
    t.string "skill_recoil_control_change"
    t.string "skill_revolvers_change"
    t.string "skill_rocket_launchers_change"
    t.string "skill_shotguns_change"
    t.string "skill_sniper_rifles_change"
    t.string "skill_smgs_change"
    t.string "skill_throwables_change"
    t.string "skill_troubleshooting_change"
    t.string "skill_underbarrel_launchers_change"
    t.string "skill_attention_change"
    t.string "skill_charisma_change"
    t.string "skill_intellect_change"
    t.string "skill_memory_change"
    t.string "skill_perception_change"
    t.string "skill_endurance_change"
    t.string "skill_health_change"
    t.string "skill_immunity_change"
    t.string "skill_metabolism_change"
    t.string "skill_strength_change"
    t.string "skill_stress_resistance_change"
    t.string "skill_vitality_change"
    t.string "skill_advanced_modding_change"
    t.string "skill_auctions_change"
    t.string "skill_barter_change"
    t.string "skill_clean_operations_change"
    t.string "skill_covert_movement_change"
    t.string "skill_crafting_change"
    t.string "skill_field_medicine_change"
    t.string "skill_first_aid_change"
    t.string "skill_free_trading_change"
    t.string "skill_heavy_vests_change"
    t.string "skill_hideout_management_change"
    t.string "skill_light_vests_change"
    t.string "skill_lockpicking_change"
    t.string "skill_mag_drills_change"
    t.string "skill_night_operations_change"
    t.string "skill_prone_movement_change"
    t.string "skill_searching_change"
    t.string "skill_shadow_connections_change"
    t.string "skill_silent_operations_change"
    t.string "skill_sniping_change"
    t.string "skill_surgery_change"
    t.string "skill_task_performance_change"
    t.string "skill_weapon_maintenance_change"
    t.string "skill_weapon_modding_change"
    t.string "skill_bear_ak_systems_change"
    t.string "skill_bear_assault_operations_change"
    t.string "skill_bear_authority_change"
    t.string "skill_bear_heavy_caliber_change"
    t.string "skill_bear_raw_power_change"
    t.string "skill_usec_ar_systems_change"
    t.string "skill_usec_deep_weapon_modding_change"
    t.string "skill_usec_long_range_optics_change"
    t.string "skill_usec_negotiations_change"
    t.string "skill_usec_tactics_change"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categorization_type", "categorization_id"], name: "index_items_on_categorization"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "sub_x2_categories", force: :cascade do |t|
    t.bigint "sub_category_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_category_id"], name: "index_sub_x2_categories_on_sub_category_id"
  end

  create_table "sub_x3_categories", force: :cascade do |t|
    t.bigint "sub_x2_category_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_x2_category_id"], name: "index_sub_x3_categories_on_sub_x2_category_id"
  end

  create_table "trader_loyalty_levels", force: :cascade do |t|
    t.bigint "trader_id", null: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trader_id"], name: "index_trader_loyalty_levels_on_trader_id"
  end

  create_table "traders", force: :cascade do |t|
    t.bigint "game_version_id", null: false
    t.string "title"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_version_id"], name: "index_traders_on_game_version_id"
  end

  add_foreign_key "categories", "handbooks"
  add_foreign_key "handbooks", "game_versions"
  add_foreign_key "hideout_station_levels", "hideout_stations"
  add_foreign_key "hideout_stations", "hideouts"
  add_foreign_key "hideouts", "game_versions"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "sub_x2_categories", "sub_categories"
  add_foreign_key "sub_x3_categories", "sub_x2_categories"
  add_foreign_key "trader_loyalty_levels", "traders"
  add_foreign_key "traders", "game_versions"
end
