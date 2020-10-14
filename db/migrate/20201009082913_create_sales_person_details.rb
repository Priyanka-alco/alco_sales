class CreateSalesPersonDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_person_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :whatapp_number
      t.string :email_id
      t.string :password
      t.boolean :status

      t.timestamps
    end
  end
end
