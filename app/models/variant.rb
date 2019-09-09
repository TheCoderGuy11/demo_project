class Variant < ApplicationRecord
  belongs_to :item
  has_many :variant_values
end
