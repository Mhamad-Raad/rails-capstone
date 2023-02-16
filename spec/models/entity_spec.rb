require 'rails_helper'

RSpec.describe Entity, type: :model do
  let(:user) { User.create(name: 'John Smith', email: 'john@example.com', password: 'password') }
  let(:group) { Group.create(name: 'Test Group') }

  it 'is valid with valid attributes' do
    entity = Entity.new(name: 'Test Entity', amount: 10, author_id: user.id)
    expect(entity).to be_valid
  end

  it 'is not valid without a name' do
    entity = Entity.new(amount: 10, author_id: user.id)
    expect(entity).not_to be_valid
  end

  it 'is not valid without an author' do
    entity = Entity.new(name: 'Test Entity', amount: 10)
    expect(entity).not_to be_valid
  end
end
