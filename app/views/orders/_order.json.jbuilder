json.extract! order, :id, :user_id, :product_id, :number, :donation, :product_price, :donation_price, :total_price, :address, :payment, :invoice, :parcel, :parcel_number, :created_at, :updated_at
json.url order_url(order, format: :json)
