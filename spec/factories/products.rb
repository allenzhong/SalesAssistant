FactoryGirl.define do
  factory :product do |f|
    f.name {Faker::Name.name}
    f.description {Faker::Lorem.paragraph}
    f.price {Faker::Number.decimal(2)}
    f.weight {Faker::Number.decimal(2)}
    f.image_url {Faker::Internet.url}
    association :user, factory: :user
  end

end
