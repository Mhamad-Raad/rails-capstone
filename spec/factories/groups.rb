# In spec/factories/groups.rb
FactoryBot.define do
  factory :group do
    name { Faker::Lorem.word }
    icon { Faker::Lorem.word }
    user
  end
end
