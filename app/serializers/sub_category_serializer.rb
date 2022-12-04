class SubCategorySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :sub_x2_categories


end
