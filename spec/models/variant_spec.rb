require 'rails_helper'

RSpec.describe Variant, type: :model do
  context 'associations' do
    it { should belong_to(:item) }
  end
end
