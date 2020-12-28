class User < ApplicationRecord
  self.table_name = :users

  has_many :purchases
  validates_presence_of :name, :last_name, :email, :password_hash
end
