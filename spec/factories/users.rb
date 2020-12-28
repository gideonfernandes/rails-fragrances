FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password_hash { Faker::Internet.password(min_length: 10, max_length: 30) }
  end
end
