require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:products) }
    it { should have_many(:orders) }
  end 
  it { should define_enum_for(:role).with([:seller, :customer]) }
end