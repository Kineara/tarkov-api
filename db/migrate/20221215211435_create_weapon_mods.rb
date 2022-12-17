class CreateWeaponMods < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_mods do |t|
      t.string :name
      t.string :item_type
      t.string :weight
      t.string :grid_size
      t.string :sold_by
      t.string :recoil_percent
      t.string :ergonomics
      t.json :mods_str
      t.string :accuracy_percent
      t.string :modes
      t.string :heat_percent
      t.string :cooling_percent
      t.string :durability_burn_percent
      t.string :muzzle_velocity
      t.string :sighting_range
      t.string :refresh_rate
      t.string :capacity
      t.string :failure_to_feed_chance
      t.string :loadunload_speed_modifier_percent
      t.string :improved_check_accuracy
      t.string :caliber
      t.json :accepted_ammunition
      t.string :loot_experience
      t.string :examine_experience
      t.string :check_speed_modifier_percent
      t.string :slot
      t.string :default_ammo
      t.string :accuracy_moa
      t.timestamps
    end
  end
end
