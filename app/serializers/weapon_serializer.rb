class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :weapon_mod_categories 
end
