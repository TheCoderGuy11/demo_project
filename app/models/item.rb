class Item < ApplicationRecord
  belongs_to :sub_category
    
  has_many :variants
  has_many :product_details
  has_many :products, through: :product_details
end
