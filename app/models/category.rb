class Category < ApplicationRecord
  has_many :products, through: :category_product
  has_many :sub_categories
end

