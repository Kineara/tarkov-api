class Trader < ApplicationRecord
  belongs_to :game_version
  has_many :trader_loyalty_levels 
end
