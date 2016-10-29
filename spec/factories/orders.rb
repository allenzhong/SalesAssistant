FactoryGirl.define do
  factory :order do |f|
    f.status { 0 }
    f.total { Faker::Number.decimal(2) }
    association :recipient, factory: :recipient, strategy: :build
  end
end
