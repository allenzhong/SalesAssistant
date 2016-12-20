json.extract! recipient, :id, :name, :address, :phone, :created_at, :updated_at
json.url recipient_url(recipient, format: :json)
