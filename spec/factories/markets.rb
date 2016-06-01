FactoryGirl.define do
  factory :market do
    investors 1
    name Faker::Name.name
  end
end
