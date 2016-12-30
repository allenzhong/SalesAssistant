#Order
#t.reference :user
#t.integer :status, default: 0
#t.decimal :total
#t.references :recipient, foreign_key: true
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :recipient
  has_many :order_items, inverse_of: :order
  accepts_nested_attributes_for :order_items, :reject_if => :all_blank, :allow_destroy => true
  attr_accessor :recipient_name, :recipient_address, :recipient_phone
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

  def recipient_name
    return self.recipient.name unless self.recipient.nil?
    return ""
  end

  def recipient_address
    return self.recipient.address unless self.recipient.nil?
    return ""
  end

  def recipient_phone
    return self.recipient.phone unless self.recipient.nil?
    return ""
  end

  def recipient_description
    return "" if self.recipient.nil?
    return <<-DESC
    #{self.recipient.name} <br/>
    #{self.recipient.address} <br/>
    #{self.recipient.phone}
    DESC
  end
end
