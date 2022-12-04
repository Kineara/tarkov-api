class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :sub_categories, if: :sub_categories_exist?
  has_many :items, as: :categorization 

  def sub_categories_exist?
    object.sub_categories.length > 0 
  end

end
