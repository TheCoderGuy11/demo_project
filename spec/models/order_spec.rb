require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end 
  
  it { should define_enum_for(:status).with([:inprocess, :delivered, :canceled]) }
end