class Product < ApplicationRecord
  self.table_name = :products

  has_one :stock
  validates_presence_of :title, :price, :image
end
