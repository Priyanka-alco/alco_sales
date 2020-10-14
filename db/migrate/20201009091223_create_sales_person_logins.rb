class CreateSalesPersonLogins < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_person_logins do |t|
      t.integer :sales_person_id
      t.string :ip_address
      t.string :loaction
      t.boolean :status

      t.timestamps
    end
  end
end
