class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy 
  has_many :sub_x2_categories, through: :sub_categories 
  has_many :sub_x3_categories, through: :sub_x2_categories 
  has_many :items
end
