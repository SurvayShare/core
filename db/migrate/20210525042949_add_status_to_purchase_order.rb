class AddStatusToPurchaseOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :purchase_orders, :status, :integer, default: 0, null: false
    add_index :purchase_orders, :username
  end
end
