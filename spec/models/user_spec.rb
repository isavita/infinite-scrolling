require 'rails_helper'

describe User, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:items).dependent(:destroy) }
  end

  context 'validations' do
    it 'presence' do
      validate_presence_of(:name)
    end
  end
end
