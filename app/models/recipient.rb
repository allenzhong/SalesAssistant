#Recipient
#t.string :name
#t.string :phone
#t.string :address
#t.string :identity_number
#t.text :memo
class Recipient < ApplicationRecord
  has_many :orders
end
