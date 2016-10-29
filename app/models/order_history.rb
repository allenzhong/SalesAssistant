class OrderHistory < ApplicationRecord
  belongs_to :order
  enum status: {
    created: 0,
    paid: 1,
    shipped: 2,
    completed: 3,
    cancelled: 9
  }
end
