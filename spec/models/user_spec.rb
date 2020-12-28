require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when defining the model' do
    it { is_expected.to have_many(:purchases) }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password_hash }
  end

  context 'when saving the model' do
    subject(:user) { create(:user) }

    it 'saving a valid user' do
      expect(user.save!).to be_truthy
    end
  end
end
