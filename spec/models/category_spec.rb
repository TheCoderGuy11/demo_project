require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'associations' do
    it { should have_one(:category_product) }
  end
end