FactoryGirl.define do
  factory :recipient do |f|
    f.name {Faker::Internet.user_name}
    f.phone {Faker::PhoneNumber.phone_number}
    f.address {Faker::Address.street_address}
    f.identity_number {Faker::Number.number(18)}
    association :user, factory: :user
  end
end
