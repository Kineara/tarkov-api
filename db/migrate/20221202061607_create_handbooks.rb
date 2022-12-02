class CreateHandbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :handbooks do |t|
      t.belongs_to :game_version, foreign_key: true 
      t.timestamps
    end
  end
end
