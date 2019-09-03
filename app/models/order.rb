class Order < ApplicationRecord
  scope :nil_delivery_date, -> { where(delivery_date: nil) }
  belongs_to :user
  belongs_to :product 

  delegate :delivery_days_count, to: :product
  
  enum status: [:inprocess, :delivered, :canceled]

end
