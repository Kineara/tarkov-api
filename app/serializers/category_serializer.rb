class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :sub_categories
  # def child_categories 
  #   object.sub_categories do |sub_category|

  # end
end
