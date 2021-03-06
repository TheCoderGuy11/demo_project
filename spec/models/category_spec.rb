require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'associations' do
    it { should have_many(:product_details) }
    it { should have_many(:sub_categories) }
  end
end
