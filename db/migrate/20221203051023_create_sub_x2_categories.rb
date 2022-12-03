class CreateSubX2Categories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_x2_categories do |t|
      t.belongs_to :sub_category, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
