class ProductDetail < ApplicationRecord
  belongs_to :product
  belongs_to :category
  belongs_to :sub_category
  belongs_to :item
  belongs_to :variant
  belongs_to :variant_value
end