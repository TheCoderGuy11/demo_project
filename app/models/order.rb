class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product 
  has_one :delivery_time
  
  enum status: [:inprocess, :delivered, :canceled]
end
