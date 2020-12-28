FactoryBot.define do
  factory :product do
    title { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    image { Faker::Internet.url(host: 'railsfragrances.com') + ['.jpg, .png'].sample }
  end
end
