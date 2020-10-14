class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :category
      t.integer :discount_percentage
      t.integer :contract_month_period
      t.integer :min_quantity_per_order
      t.integer :min_order_per_month
      t.boolean :status

      t.timestamps
    end
  end
end
