class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_one :delivery_time
  accepts_nested_attributes_for :delivery_time
  validates :name, presence: true
  validates :category, presence: true
  validates :price, numericality: true
  validates :brand_name, presence: true
end
