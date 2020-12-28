class Purchase < ApplicationRecord
  self.table_name = :purchases

  belongs_to :user
  validates_presence_of :total
end
