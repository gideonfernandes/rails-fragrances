class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.belongs_to :user, null: false, foreign_key: true, index: true
      t.decimal :total, null: false, default: 0
      t.timestamps
    end
  end
end
