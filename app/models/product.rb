class Product < ApplicationRecord
  # Association
  belongs_to :user  
  has_one :delivery_time
  has_many :orders, :dependent => :delete_all

  accepts_nested_attributes_for :delivery_time
  
  # Validation
  validates :name, :category, :brand_name, presence: true
  validates :price, numericality: true

  mount_uploader :image, AvatarUploader
end
