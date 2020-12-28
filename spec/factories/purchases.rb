FactoryBot.define do
  factory :purchase do
    association :user, factory: :user
    total { Faker::Commerce.price * 10 }
  end
end
