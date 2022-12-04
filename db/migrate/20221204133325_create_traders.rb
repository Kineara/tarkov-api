class CreateTraders < ActiveRecord::Migration[6.1]
  def change
    create_table :traders do |t|
      t.belongs_to :game_version, null: false, foreign_key: true
      t.string :title 
      t.string :name 

      t.timestamps
    end
  end
end
