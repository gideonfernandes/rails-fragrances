class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.belongs_to :product, null: false, foreign_key: true, index: true
      t.integer :amount, null: false, default: 0
      t.timestamps
    end
  end
end
