# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#0..4.times do 
#  User.create(name: Faker::Name.name, mobile: Faker::PhoneNumber.phone_number_with_country_code, address: Faker::Address.full_address, role: (0..1).to_a.sample, email: Faker::Internet.email, password: '123456', password_confirmation: '123456')
#end

#0..20.times do 
# Product.create(name: Faker::Device.model_name, category: Faker::Appliance.equipment, price: Faker::Commerce.price, brand_name: Faker::Device.manufacturer, user_id: (1..6).to_a.sample, quantity: (1..10).to_a.sample, delivery_time_attributes: {number_of_days: (1..10).to_a.sample})
#end
#puts "created 20 products"

#AdminUser.create!(email: 'admin2@example.com', password: '123456', password_confirmation: '123456') if Rails.env.development?

#0..15.times do 
#  Order.create(user_id: (1..10).to_a.sample, product_id: (1..20).to_a.sample, status: (0..1).to_a.sample, payment: 'cod')
#end