class Customer < ApplicationRecord
  def cool_name
    "Sr. #{name}"
  end
end
