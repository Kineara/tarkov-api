class HideoutStation < ApplicationRecord
  belongs_to :hideout
  has_many :hideout_station_levels
end
