FactoryGirl.define do
  factory :order_history do
    association :order, factory: :order
    status 0
    history "MyText"
  end
end
