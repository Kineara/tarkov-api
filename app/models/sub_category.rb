class SubCategory < ApplicationRecord
  has_many :sub_x2_categories, dependent: :destroy 
  has_many :items, through: :categories 
end
