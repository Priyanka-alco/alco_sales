class CreatePurchaseOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_orders do |t|
      t.integer :customer_id
      t.integer :sales_person_id
      t.integer :preferred_contact
      t.integer :status_id
      t.string :subscription_type
      t.integer :subscription_id
      t.boolean :status

      t.timestamps
    end
  end
end
