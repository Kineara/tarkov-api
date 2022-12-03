class SubX2Category < ApplicationRecord
  has_many :sub_x3_categories, dependent: :destroy 
  has_many :items, as: :categorization 
end
