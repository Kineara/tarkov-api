class TraderSerializer < ActiveModel::Serializer
  attributes :id, :title, :name 
  has_many :trader_loyalty_levels 
end
