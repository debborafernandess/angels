FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password Faker::Internet.password
    fullname Faker::Internet.name
  end
end
