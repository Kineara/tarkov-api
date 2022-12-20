class WeaponModCategorySerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :weapon_mods
end
