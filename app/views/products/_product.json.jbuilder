json.extract! product, :id, :img, :name, :price, :weight, :categorie1_id, :categorie2_id, :categorie3_id, :content, :discount, :created_at, :updated_at
json.url product_url(product, format: :json)
