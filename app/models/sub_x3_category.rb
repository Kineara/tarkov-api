class SubX3Category < ApplicationRecord
  has_many :items, as: :categorization 
end
