require 'rails_helper'

RSpec.describe Variant, type: :model do
  context 'associations' do
    it { should belong_to(:item) }
    it { should have_many(:product_details) }
    it { should have_many(:variant_values)}
  end
end
