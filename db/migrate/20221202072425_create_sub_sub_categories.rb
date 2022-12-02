class CreateSubSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_sub_categories do |t|
      t.string :name
      t.belongs_to :sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
