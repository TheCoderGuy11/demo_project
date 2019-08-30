FactoryGirl.define do
  factory :user do
  sequence(:email) { |n| "user#{n}@example.com" }
  name { Faker::Name.name }
  password '123456'
  password_confirmation '123456'
  mobile { Faker::PhoneNumber.phone_number_with_country_code }
  address { Faker::Address.full_address }
  role { (0..1).to_a.sample }
  # confirmed_at Date.today
  end
end