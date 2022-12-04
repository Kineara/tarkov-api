class CreateHideoutStationLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :hideout_station_levels do |t|
      t.belongs_to :hideout_station, null: false, foreign_key: true

      t.integer :level 
      t.timestamps
    end
  end
end
