class Category < ApplicationRecord
  has_many :product_details
  has_many :products, through: :product_details
  has_many :sub_categories
end
