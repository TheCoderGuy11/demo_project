class Variant < ApplicationRecord
  belongs_to :item

  has_many :variant_values
  has_many :product_details
  has_many :products, through: :product_detail
end
