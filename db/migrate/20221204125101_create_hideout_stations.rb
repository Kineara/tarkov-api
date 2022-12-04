class CreateHideoutStations < ActiveRecord::Migration[6.1]
  def change
    create_table :hideout_stations do |t|
      t.belongs_to :hideout, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
