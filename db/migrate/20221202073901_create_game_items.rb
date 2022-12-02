class CreateGameItems < ActiveRecord::Migration[6.1]
  def change
    create_table :game_items do |t|
      t.belongs_to :sub_sub_category, null: false, foreign_key: true
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
