class Item < ApplicationRecord
  has_one :sub_x2_category
  has_one :sub_x3_category
  belongs_to :sub_category, through: :sub_x2_category
  belongs_to :sub_x2_category, through: :sub_x3_category
end
