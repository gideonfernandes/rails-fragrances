require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'Create a new Customer' do
    customer = create(:customer)
    expect(customer.save!).to be_truthy
  end

  it '#cool_name' do
    customer = create(:customer)
    expect(customer.cool_name).to start_with('Sr.')
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
