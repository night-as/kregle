json.extract! user, :id, :index, :login, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
