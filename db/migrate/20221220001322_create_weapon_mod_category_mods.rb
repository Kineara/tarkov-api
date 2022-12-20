class CreateWeaponModCategoryMods < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_mod_category_mods do |t|
      t.belongs_to :weapon_mod_category, null: false, foreign_key: true
      t.belongs_to :weapon_mod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
