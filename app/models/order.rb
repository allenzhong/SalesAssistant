#Order
#t.reference :user
#t.integer :status, default: 0
#t.decimal :total
#t.references :recipient, foreign_key: true
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :recipient
  has_many :order_items
  accepts_nested_attributes_for :order_items, reject_if: proc {|attributes| attributes['product_id']}, allow_destroy: true
  attr_accessor :recipient_name
  has_many :order_histories
  validates :total, numericality: { greater_than_or_equal_to: 0 }
  enum status: {
    created: 0,
    paid: 1,
    shipped: 2,
    completed: 3,
    cancelled: 9
  }

  scope :current_user, ->(user) { where(user: user) }
end
