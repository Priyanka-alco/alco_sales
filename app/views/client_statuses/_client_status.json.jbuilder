json.extract! client_status, :id, :status_name, :status, :created_at, :updated_at
json.url client_status_url(client_status, format: :json)
