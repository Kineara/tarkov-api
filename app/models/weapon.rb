class Weapon < ApplicationRecord
  has_many :weapon_mod_categories 
  has_many :weapon_mods, through: :weapon_mod_categories 
end
