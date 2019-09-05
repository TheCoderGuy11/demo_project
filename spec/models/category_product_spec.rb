require 'rails_helper'

RSpec.describe CategoryProduct, type: :model do
  context 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:category) }
  end 

end