class GameVersionSerializer < ActiveModel::Serializer
  attributes :id, :name, :current_version

  # Only render handbook and nested data if specific game version ID is provided
  has_one :handbook, if: :not_index?

  def not_index?
    instance_options[:version_id]
  end

end
