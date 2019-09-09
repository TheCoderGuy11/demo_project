require 'rails_helper'

RSpec.describe SubCategory, type: :model do
  context 'associations' do
    it { should have_many(:items) }
    it { should have_many(:product_details) }
    it { should belong_to(:category) }
  end
end
