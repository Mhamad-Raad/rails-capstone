# In spec/factories/groups.rb
FactoryBot.define do
  factory :group do
    name { Faker::Lorem.word }
    icon { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'test_image.png'), 'image/png') }
    user
  end
end
