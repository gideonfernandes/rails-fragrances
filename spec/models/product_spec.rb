require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'when defining the model' do
    it { is_expected.to have_one(:stock) }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :image }
  end
end
