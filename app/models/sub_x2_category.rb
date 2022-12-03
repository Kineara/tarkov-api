class SubX2Category < ApplicationRecord
  belongs_to :sub_category
  has_many :sub_x3_categories, dependent: :destroy 
end
