class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.belongs_to :handbook, foreign_key: true 
      t.string :name

      t.timestamps
    end
  end
end