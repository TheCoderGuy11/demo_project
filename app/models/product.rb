class Product < ApplicationRecord
  # Association
  belongs_to :user  
  
  has_one :delivery_time

  has_many :orders, :dependent => :delete_all
  has_many :images, inverse_of: :product

  accepts_nested_attributes_for :delivery_time
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  
  # Validation
  validates :name, :category, :brand_name, presence: true
  validates :price, numericality: true

  def delivery_days_count
    delivery_time.number_of_days
  end 
end
