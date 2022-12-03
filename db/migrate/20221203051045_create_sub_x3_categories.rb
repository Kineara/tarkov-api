class CreateSubX3Categories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_x3_categories do |t|
      t.belongs_to :sub_x2_category, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
