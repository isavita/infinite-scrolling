require 'rails_helper'

describe HomepagesController, type: :controller do
  context 'validations' do
    it 'presence' do
      validate_presence_of(:name)
    end
  end
end
