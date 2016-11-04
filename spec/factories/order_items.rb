FactoryGirl.define do
  factory :order_item do |f|
    f.quantity {Faker::Number.number(1)}
    f.subtotal {Faker::Number.decimal(2)}
    f.rate {Faker::Number.decimal(2)}
    f.discount {Faker::Number.decimal(2)}
    association :product, factory: :product
    order
  end

  factory :order do |f|
    f.status { 0 }
    f.total { Faker::Number.decimal(2) }
    association :recipient, factory: :recipient, strategy: :create

    factory :order_with_items do
      transient do
        order_items_count 5
      end

      after(:create) do |order, evaluator|
        create_list(:order_item, evaluator.order_items_count, order: order)
      end
    end
  end
end
