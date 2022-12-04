class GameVersionSerializer < ActiveModel::Serializer
  attributes :id, :name, :current_version 
  has_one :handbook 
end
