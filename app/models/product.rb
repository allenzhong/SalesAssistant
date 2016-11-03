#Product
#t.string :name
#t.text :description
#t.decimal :price
#t.decimal :weight
#t.string :image_url
class Product < ApplicationRecord
  validates :name, presence: true
  validates :weight, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
end
