#Product
#t.string :name
#t.text :description
#t.decimal :price
#t.decimal :weight
#t.string :image_url
class Product < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  validates :price, presence: true
end
