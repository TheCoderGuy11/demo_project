class SubCategory < ApplicationRecord
  belongs_to :category
  
  has_many :product_details
  has_many :products, through: :product_detail
  has_many :items
end
