require 'rails_helper'

RSpec.describe Stock, type: :model do
  context 'when defining the model' do
    it { is_expected.to belong_to :product }
    it { is_expected.to validate_presence_of :amount }
  end
end
