json.extract! basket, :id, :user_id, :product_id, :number, :donation, :created_at, :updated_at
json.url basket_url(basket, format: :json)
