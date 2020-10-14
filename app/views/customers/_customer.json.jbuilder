json.extract! customer, :id, :name, :client_id, :address, :country_id, :state_id, :city_id, :zip_code, :phone_number, :whatsapp_number, :email_id, :status, :created_at, :updated_at
json.url customer_url(customer, format: :json)
