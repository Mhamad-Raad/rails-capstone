require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name and email' do
    user = User.new(name: 'John Smith', email: 'john@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(email: 'john@example.com')
    expect(user).to_not be_valid
  end

  it 'is invalid without an email' do
    user = User.new(name: 'John Smith')
    expect(user).to_not be_valid
  end
end
