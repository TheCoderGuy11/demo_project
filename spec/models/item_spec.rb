require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'associations' do
    it { should belong_to(:sub_category) }
  end
end
