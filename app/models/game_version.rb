class GameVersion < ApplicationRecord
  has_many :weapons, dependent: :destroy 
  has_many :weapon_mods, dependent: :destroy 
end
