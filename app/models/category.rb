class Category < ApplicationRecord
  belongs_to :handbook
  has_many :sub_categories, dependent: :destroy 
end
