require 'rails_helper'

RSpec.describe ProductDetail, type: :model do
  context 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:category) }
    it { should belong_to(:sub_category) }
    it { should belong_to(:item) }
    it { should belong_to(:variant) }
    it { should belong_to(:variant_value) }
  end 

end