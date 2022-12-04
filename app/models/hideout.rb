class Hideout < ApplicationRecord
  belongs_to :game_version
  has_many :hideout_stations 
end
