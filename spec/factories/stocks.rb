FactoryBot.define do
  factory :stock do
    association :product, factory: :product
    amount { rand(1..50) }
  end
end
