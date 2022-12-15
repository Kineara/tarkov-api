class GameVersion < ApplicationRecord
  has_many :weapons, dependent: :destroy 
end
