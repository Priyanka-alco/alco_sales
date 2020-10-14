json.extract! sales_person_detail, :id, :first_name, :last_name, :phone_no, :whatapp_number, :email_id, :password, :status, :created_at, :updated_at
json.url sales_person_detail_url(sales_person_detail, format: :json)
