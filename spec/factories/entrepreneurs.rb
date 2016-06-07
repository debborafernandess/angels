FactoryGirl.define do
  factory :entrepreneur do
    sequence(:name) { |n| "#{n} #{Faker::Name.name}" }
    sequence(:email) { |n| "#{n}_#{Faker::Internet.email}" }
    telephone Faker::PhoneNumber.phone_number
    bio Faker::Lorem.paragraph
    password Faker::Internet.password
  end
end
