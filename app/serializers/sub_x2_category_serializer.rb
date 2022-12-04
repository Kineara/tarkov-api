class SubX2CategorySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :sub_x3_categories 
end
