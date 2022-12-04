class CreateTraderLoyaltyLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :trader_loyalty_levels do |t|
      t.belongs_to :trader, null: false, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
