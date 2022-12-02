class GameVersion < ApplicationRecord
  has_one :handbook, dependent: :destroy 
end
