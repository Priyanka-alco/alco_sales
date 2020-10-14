json.extract! subscription, :id, :category, :discount_percentage, :contract_month_period, :min_quantity_per_order, :min_order_per_month, :status, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
