class CreateClientStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :client_statuses do |t|
      t.string :status_name
      t.boolean :status

      t.timestamps
    end
  end
end
