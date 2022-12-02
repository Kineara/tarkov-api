class CreateSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_categories do |t|
      t.belongs_to :category, foreign_key: :true 
      t.string :name

      t.timestamps
    end
  end
end
