class WeaponModCategory < ApplicationRecord
  belongs_to :weapon
  has_many :weapon_mod_category_mods 
  has_many :weapon_mods, through: :weapon_mod_category_mods 
end
