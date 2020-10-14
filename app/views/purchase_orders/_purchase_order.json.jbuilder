json.extract! purchase_order, :id, :customer_id, :sales_person_id, :preferred_contact, :status_id, :subscription_type, :subscription_id, :status, :created_at, :updated_at
json.url purchase_order_url(purchase_order, format: :json)
