class CreateGameVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :game_versions do |t|
      t.string :name
      t.boolean :current_version 

      t.timestamps
    end
  end
end
