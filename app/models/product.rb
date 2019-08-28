class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_one :delivery_time

end
