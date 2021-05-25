class CreatePurchaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.string :address, null: false
      t.string :city, default: 'Melbourne'
      t.string :customer_name, null: false
      t.string :username, null: false
      t.string :state, default: 'Victoira'
      t.string :country, default: 'Austalia'

      t.timestamps
    end
  end
end
