class GameVersion < ApplicationRecord
  has_one :handbook, dependent: :destroy 
  has_one :hideout, dependent: :destroy
end
