class Handbook < ApplicationRecord
  has_many :categories, dependent: :destroy 
end
