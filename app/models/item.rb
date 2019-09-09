class Item < ApplicationRecord
  belongs_to :sub_category
  has_many :variants
end
