FactoryGirl.define do
  factory :investor do
    sequence(:email) { |n| "#{n}_#{Faker::Internet.email}" }
    sequence(:name) { |n| "#{n} #{Faker::Name.name}" }
    password Faker::Internet.password
  end
end
