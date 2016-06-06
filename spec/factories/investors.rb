FactoryGirl.define do
  factory :investor do
    name Faker::Name.name
    email  Faker::Internet.email
    password Faker::Internet.password
  end
end
