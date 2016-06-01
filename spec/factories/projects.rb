FactoryGirl.define do
  factory :project do
    value_proposal Faker::Lorem.paragraph
    target Faker::Lorem.word
    core_business Faker::Lorem.paragraph
    partnerships Faker::Lorem.paragraph
    pricing Faker::Commerce.price
    expenses Faker::Lorem.paragraph
    main_resources Faker::Lorem.paragraph
    communication Faker::Lorem.paragraph
    relationship Faker::Lorem.paragraph
  end
end
