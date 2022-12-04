class SubCategorySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :sub_x2_categories, if: :sub_x2_categories_exist?

  def sub_x2_categories_exist?
    object.sub_x2_categories.length > 0 
  end


end
