FactoryBot.define do
  factory :car do
    name { 'MyString' }
    model { 'MyString' }
    reserved { false }
    price { 1 }
    image_url { 'MyString' }
    description { 'MyText' }
    user { nil }
  end
end
