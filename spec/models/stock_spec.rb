require 'rails_helper'

RSpec.describe Stock, type: :model do
  context 'when defining the model' do
    it { is_expected.to belong_to :product }
    it { is_expected.to validate_presence_of :amount }
  end

  context 'when saving the model' do
    subject(:stock) { create(:stock) }

    it 'saving a valid stock' do
      expect(stock.save!).to be_truthy
    end
  end
end
