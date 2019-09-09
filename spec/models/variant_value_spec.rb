require 'rails_helper'

RSpec.describe VariantValue, type: :model do
  context 'associations' do
    it { should belong_to(:variant) }
    it { should have_many(:product_details) }
  end
end
