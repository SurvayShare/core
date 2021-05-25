class CreateCorePurchaseOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :core_purchase_order_items do |t|
      t.references :purchase_order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :count, default: 1
      t.string :unit, default: 'gram'

      t.timestamps
    end
  end
end
