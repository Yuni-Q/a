json.extract! inquiry, :id, :user_id, :title, :content, :classification, :answer, :email, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
