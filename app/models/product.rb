#Product
#t.reference :user
#t.string :name
#t.text :description
#t.decimal :price
#t.decimal :weight
#t.string :image_url
class Product < ApplicationRecord
  validates :name, presence: true
  validates :weight, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  belongs_to :user

  scope :current_user, ->(user) {where(user: user)}
  scope :search_products, ->(name) {where(' name LIKE ?', "%#{name}%")}
end
