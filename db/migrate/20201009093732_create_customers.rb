class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :client_id
      t.string :address
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.string :zip_code
      t.string :phone_number
      t.string :whatsapp_number
      t.string :email_id
      t.boolean :status

      t.timestamps
    end
  end
end
