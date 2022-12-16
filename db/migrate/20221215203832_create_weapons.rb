class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.belongs_to :game_version, foreign_key: true 
      t.string :name
      t.string :item_type
      t.string :slot
      t.string :weight
      t.string :grid_size
      t.string :sold_by
      t.string :recoil
      t.string :effective_distance
      t.string :ergonomics
      t.string :firing_modes
      t.string :rate_of_fire_rpm
      t.string :accuracy_moa
      t.string :sighting_range
      t.string :caliber
      t.string :default_ammo
      t.string :muzzle_velocity
      t.string :default_mag
      t.json :accepted_ammunition
      t.json :mods_str
      t.string :recoil_percent
      t.string :projectile_speed
      t.string :damage
      t.string :penetration_power
      t.string :armor_damage_percent
      t.string :explosion_delay
      t.string :throw_strength
      t.string :explosion_radius
      t.string :contusion_radius
      t.string :fragments_count
      t.string :loot_experience
      t.string :examine_experience
      t.string :smoke_emit_duration
      t.string :capacity
      t.string :failure_to_feed_chance
      t.string :improved_check_accuracy
      t.string :loadunload_speed_modifier_percent
      t.string :check_speed_modifier_percent
      t.timestamps
    end
  end
end
