json.extract! profile, :id, :role_id, :user_id, :first_name, :last_name, :created_at, :updated_at
json.url profile_url(profile, format: :json)
