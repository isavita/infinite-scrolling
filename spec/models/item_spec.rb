require 'rails_helper'

describe Item, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  context 'validations' do
    it 'presence' do
      validate_presence_of(:price)
    end
  end
end
