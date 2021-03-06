require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'associations' do
    it { should belong_to(:sub_category) }
    it { should have_many(:variants) }
    it { should have_many(:product_details) }
  end
end
