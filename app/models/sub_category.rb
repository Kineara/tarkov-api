class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :sub_x2_categories, dependent: :destroy 
end
