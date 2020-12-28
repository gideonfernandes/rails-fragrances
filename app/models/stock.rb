class Stock < ApplicationRecord
  self.table_name = :stocks

  belongs_to :product
  validates_presence_of :amount
end
