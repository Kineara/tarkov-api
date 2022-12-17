class WeaponMod < ApplicationRecord
  has_many :weapon_mod_categories 
  has_many :weapons, through: :weapon_mod_categories 

end
