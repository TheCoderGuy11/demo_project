class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product 
  
  enum status: [:inprocess, :delivered, :canceled]
end
