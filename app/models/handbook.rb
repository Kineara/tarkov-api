class Handbook < ApplicationRecord
  belongs_to :game_version 
  has_many :categories, dependent: :destroy 
end
