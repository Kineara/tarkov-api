class ItemSerializer < ActiveModel::Serializer
  attributes :parsed_attributes 

  def parsed_attributes 
    object.attributes.select { |k,v| v != nil && k != "created_at" && k != "updated_at"}
  end
end
