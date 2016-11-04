FactoryGirl.define do
  factory :single_order do |f|
    f.status { 0 }
    f.total { Faker::Number.decimal(2) }
    association :recipient, factory: :recipient, strategy: :build
    association :user, factory: :user
  end
end
