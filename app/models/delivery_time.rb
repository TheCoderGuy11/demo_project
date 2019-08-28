class DeliveryTime < ApplicationRecord
  belongs_to :product, optional: true
end
