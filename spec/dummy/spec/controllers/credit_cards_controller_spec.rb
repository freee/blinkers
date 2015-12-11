require 'rails_helper'

RSpec.describe CreditCardsController, type: :controller do
  describe "create" do
    it 'filters credit_card_number' do
      post :create, credit_card_number: '1234123412341234'
      expect(controller.secure_params['credit_card_number']).to eq "[FILTERED]"
    end
  end
end
