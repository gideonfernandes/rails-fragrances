require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'when defining the model' do
    it { is_expected.to have_one(:stock) }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :image }
  end

  context 'when saving the model' do
    subject(:product) { create(:product) }

    it 'saving a valid product' do
      expect(product.save!).to be_truthy
    end
  end
end
