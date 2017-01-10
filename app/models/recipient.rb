#Recipient
#t.reference :user
#t.string :name
#t.string :phone
#t.string :address
#t.string :identity_number
#t.text :memo
class Recipient < ApplicationRecord
	validates :name, :phone, :address, presence: true
	validates :phone, length: { minimum: 8 }
  belongs_to :user
  has_many :orders

	scope :current_user, ->(user) {where(user: user)}
  scope :search_recipients, ->(name) {where('name LIKE ?', "%#{name}%")}
end
