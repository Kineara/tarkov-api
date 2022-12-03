class SubX3Category < ApplicationRecord
  has_many :items, through: :sub_x2_categories 
end
