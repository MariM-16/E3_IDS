json.extract! user, :id, :first_name, :email, :password, :created_at, :updated_at
json.url host_url(user, format: :json)