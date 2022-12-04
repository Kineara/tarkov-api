class SubX3CategorySerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :items, as: :categorization 
end
