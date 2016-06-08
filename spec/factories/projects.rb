FactoryGirl.define do
  factory :project do
    target Faker::Lorem.word
    pricing Faker::Commerce.price
    name Faker::Name.name
    description Faker::Lorem.paragraph
    partner Faker::Lorem.word
  end
end
