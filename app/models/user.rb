class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :orders
  validates :name, presence: {message: " Name cannot be nil "}, allow_nil: false 
  enum role: [:seller, :customer]
end
