require 'rails_helper'

RSpec.describe Purchase, type: :model do
  context 'when defining the model' do
    it { is_expected.to belong_to :user }
    it { is_expected.to validate_presence_of :total }
  end
end
