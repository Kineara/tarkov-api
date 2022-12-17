class WeaponModCategory < ApplicationRecord
  belongs_to :weapon
  belongs_to :weapon_mod
end
