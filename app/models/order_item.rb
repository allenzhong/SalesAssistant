#OrderItem
#t.references :product, foreign_key: true
#t.references :order, foreign_key: true
#t.integer :quantity
#t.decimal :subtotal
#t.decimal :rate
#t.decimal :discount
class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  attr_accessor :product_name
end
