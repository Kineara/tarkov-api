class CreateHideouts < ActiveRecord::Migration[6.1]
  def change
    create_table :hideouts do |t|
      t.belongs_to :game_version, null: false, foreign_key: true

      t.timestamps
    end
  end
end
