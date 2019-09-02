require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:brand_name) }
    it { should validate_presence_of(:category) }
    it { should validate_numericality_of(:price)}
  end
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_one(:delivery_time) }
    it { should have_many(:orders) }
  end 

end