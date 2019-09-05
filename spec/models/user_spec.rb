require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_numericality_of(:mobile)}
  end
  context 'associations' do
    it { should have_many(:products) }
    it { should have_many(:orders) }
  end 
  it { should define_enum_for(:role).with([:seller, :customer, :admin]) }
end