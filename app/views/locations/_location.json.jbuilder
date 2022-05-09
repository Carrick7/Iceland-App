json.extract! location, :id, :title, :body, :image, :created_at, :updated_at
json.url location_url(location, format: :json)
