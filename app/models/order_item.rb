#OrderItem
#t.references :product, foreign_key: true
#t.references :order, foreign_key: true
#t.integer :quantity
#t.decimal :subtotal
#t.decimal :rate
#t.decimal :discount
class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order, inverse_of: :order_items
  attr_accessor :product_name, :unit_price

  def product_name
    return self.product.name unless self.product.nil?
    return ""
  end

  def unit_price
    return self.product.price unless self.product.nil?
    return ""
  end
end
