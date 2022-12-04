class HideoutStationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :hideout_station_levels, if: :levels_exist?

  def levels_exist?
    object.hideout_station_levels.length > 0
  end
end
