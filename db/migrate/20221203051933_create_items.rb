class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      #t.belongs_to :sub_category, null: false, foreign_key: true 
      t.belongs_to :category, null: false, foreign_key: true 
      # Generic attributes
      t.string :name
      t.integer :weight_kg 
      t.boolean :can_be_discarded_in_raid?
      t.string :can_be_discarded_in_raid_amount 
      t.boolean :is_moddable_in_raid? 
      t.string :size_change 
      t.integer :use_time_seconds
      t.integer :uses 
      t.string :grid_size 

      # Armor / Helmets / Eyewear attributes
      t.string :container_size 
      t.integer :armour_points
      t.integer :armour_class 
      t.string :material 
      t.string :armor_areas 
      t.integer :richochet_chance 
      t.integer :ergonomics_change 
      t.integer :turning_speed_change
      t.integer :movement_speed_change
      t.integer :flashbang_eyes_protection     

      # Weapons attributes
      t.integer :recoil_change 
      t.integer :recoil_percent_modifier 
      t.integer :heat_change 
      t.integer :heat_percent_modifier 
      t.integer :cooling_change 
      t.integer :cooling_percent_modifier 
      t.integer :durability_burn_change 
      t.integer :durability_burn_percent_modifier 
      t.integer :loudness_change 
      t.integer :loudness_percent_modifier 
      t.integer :muzzle_velocity_change 
      t.integer :muzzle_velocity_percent_modifier 
      t.integer :accuracy_change 
      t.integer :accuracy_percent_modifier 
      t.float :accuracy_moa 
      t.string :caliber 
      t.integer :ammo_capacity 
      t.integer :load_speed_percent_modifier 
      t.integer :check_speed_percent_modifier 
      t.integer :minimum_check_level 
      t.string :failure_to_feed_chance 
      t.string :misfire_chance 
      t.boolean :is_threaded? 
      t.integer :bullet_velocity 
      t.integer :repair_resource 

      # Sights & Lights attributes
      t.boolean :is_thermal? 
      t.boolean :is_nvg?
      t.boolean :is_laser? 
      t.boolean :is_flashlight? 
      t.boolean :has_switchable_reticle? 
      t.boolean :has_switchable_magnification? 
      t.string :magnifications 
      t.string :reticle_color 
      t.integer :sighting_range 

      # Medical attributes
      t.integer :health_change 
      t.string :health_regeneration_modifier 
      t.integer :hydration_change 
      t.string :hydration_recovery_modifier  
      t.integer :energy_change 
      t.string :energy_recovery_modifier  
      t.integer :stamina_change 
      t.string :stamina_recovery_modifier  
      t.string :max_stamina_modifier 
      t.string :damage_taken_except_head_modifier 
      t.integer :light_bleed_percent_chance 
      t.integer :heavy_bleed_percent_chance 
      t.boolean :removes_radiation_exposure? 
      t.boolean :causes_pain?
      t.boolean :removes_pain? 
      t.integer :removes_pain_duration_seconds 
      t.boolean :causes_abdominal_bleeding? 
      t.boolean :causes_tunnel_vision? 
      t.boolean :removes_contusion? 
      t.string :carry_limit_modifier 
      t.boolean :causes_tremors? 
      t.boolean :stops_bleeding? 
      t.boolean :removes_fracture? 
      t.boolean :restores_limb?
      t.integer :hp_resource
      t.boolean :removes_toxification? 

      # Skill changes
      # Combat
      t.string :skill_aim_drills_change 
      t.string :skill_assault_rifles_change 
      t.string :skill_dmrs_change 
      t.string :skill_hmgs_change 
      t.string :skill_lmgs_change
      t.string :skill_melee_change 
      t.string :skill_pistols_change 
      t.string :skill_recoil_control_change 
      t.string :skill_revolvers_change 
      t.string :skill_rocket_launchers_change 
      t.string :skill_shotguns_change 
      t.string :skill_sniper_rifles_change 
      t.string :skill_smgs_change 
      t.string :skill_throwables_change 
      t.string :skill_troubleshooting_change 
      t.string :skill_underbarrel_launchers_change 

      # Mental 
      t.string :skill_attention_change 
      t.string :skill_charisma_change 
      t.string :skill_intellect_change
      t.string :skill_memory_change 
      t.string :skill_perception_change 

      # Physical 
      t.string :skill_endurance_change 
      t.string :skill_health_change
      t.string :skill_immunity_change 
      t.string :skill_metabolism_change 
      t.string :skill_strength_change 
      t.string :skill_stress_resistance_change 
      t.string :skill_vitality_change 

      # Practical
      t.string :skill_advanced_modding_change 
      t.string :skill_auctions_change 
      t.string :skill_barter_change 
      t.string :skill_clean_operations_change 
      t.string :skill_covert_movement_change 
      t.string :skill_crafting_change 
      t.string :skill_field_medicine_change 
      t.string :skill_first_aid_change 
      t.string :skill_free_trading_change 
      t.string :skill_heavy_vests_change 
      t.string :skill_hideout_management_change 
      t.string :skill_light_vests_change 
      t.string :skill_lockpicking_change 
      t.string :skill_mag_drills_change 
      t.string :skill_night_operations_change 
      t.string :skill_prone_movement_change 
      t.string :skill_searching_change
      t.string :skill_shadow_connections_change 
      t.string :skill_silent_operations_change 
      t.string :skill_sniping_change 
      t.string :skill_surgery_change 
      t.string :skill_task_performance_change 
      t.string :skill_weapon_maintenance_change 
      t.string :skill_weapon_modding_change 

      # Special
      t.string :skill_bear_ak_systems_change 
      t.string :skill_bear_assault_operations_change 
      t.string :skill_bear_authority_change 
      t.string :skill_bear_heavy_caliber_change 
      t.string :skill_bear_raw_power_change 
      t.string :skill_usec_ar_systems_change 
      t.string :skill_usec_deep_weapon_modding_change 
      t.string :skill_usec_long_range_optics_change 
      t.string :skill_usec_negotiations_change 
      t.string :skill_usec_tactics_change 

      t.timestamps
    end
  end
end
