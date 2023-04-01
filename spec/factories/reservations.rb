FactoryBot.define do
  factory :reservation do
    date { "2023-04-01" }
    city { "MyString" }
    user { nil }
    car { nil }
  end
end
