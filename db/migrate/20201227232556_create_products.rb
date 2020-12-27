class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.decimal :price, null: false, default: 0
      t.string :image, null: false
      t.timestamps
    end
  end
end
