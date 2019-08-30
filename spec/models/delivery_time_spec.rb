require 'rails_helper'

RSpec.describe DeliveryTime, type: :model do
  context 'associations' do
    it { should belong_to(:product).optional }
  end 
end