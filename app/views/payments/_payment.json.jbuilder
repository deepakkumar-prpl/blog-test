json.extract! payment, :id, :amount, :description, :currency, :created_at, :updated_at
json.url payment_url(payment, format: :json)
