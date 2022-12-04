class SubX2CategorySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :sub_x3_categories, if: :sub_x3_categories_exist? 
  
  def sub_x3_categories_exist? 
    object.sub_x3_categories.length > 0
  end
end
