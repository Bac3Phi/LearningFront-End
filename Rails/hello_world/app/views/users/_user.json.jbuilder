json.extract! user, :id, :user_name, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
