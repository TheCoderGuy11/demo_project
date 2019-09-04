require 'rails_helper'

RSpec.describe Image, type: :model do
  context 'associations' do
    it { should belong_to(:product) }
  end 

end