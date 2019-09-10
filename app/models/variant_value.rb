class VariantValue < ApplicationRecord
  belongs_to :variant

  has_many :product_details
  has_many :products, through: :product_details
end
