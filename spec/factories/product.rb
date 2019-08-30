require 'faker'

FactoryGirl.define do
  factory :product do
  name { Faker::Device.model_name }
  category { Faker::Appliance.equipment }
  price { Faker::Commerce.price }
  brand_name { Faker::Device.manufacturer }
  user_id { (1..6).to_a.sample }
  quantity { (1..10).to_a.sample }
  image 'product1.jpg'
  confirmed_at Date.today
  end
end