#Recipient
#t.reference :user
#t.string :name
#t.string :phone
#t.string :address
#t.string :identity_number
#t.text :memo
class Recipient < ApplicationRecord
  belongs_to :user
  has_many :orders
end
