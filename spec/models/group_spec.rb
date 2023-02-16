require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.create(name: 'John Smith', email: 'john@example.com', password: 'password')
      group = Group.new(name: 'Test Group',icon:'none', user_id: user.id)
      expect(group).to be_valid
    end

    it 'is not valid without a name' do
      user = User.create(name: 'John Smith', email: 'john@example.com', password: 'password')
      group = Group.new(user_id: user.id)
      expect(group).to_not be_valid
    end

    it 'is not valid without an icon' do
      user = User.create(name: 'John Smith', email: 'john@example.com', password: 'password')
      group = Group.new(name: 'name', user_id: user.id)
      expect(group).to_not be_valid
    end

  end
end
