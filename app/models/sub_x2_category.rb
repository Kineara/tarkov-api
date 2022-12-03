class SubX2Category < ApplicationRecord
  has_many :sub_x3_categories, dependent: :destroy 
end
