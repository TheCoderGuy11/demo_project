class Product < ApplicationRecord
  # Association
  belongs_to :user  
  
  has_one :delivery_time
  has_one :category_product
  has_one :category, through: :category_product

  has_many :orders, :dependent => :delete_all
  has_many :images, inverse_of: :product, :dependent => :delete_all

  accepts_nested_attributes_for :delivery_time
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  
  # Validation
  validates :name, :brand_name, presence: true
  validates :price, numericality: true

  def delivery_days_count
    delivery_time.number_of_days
  end 
end
