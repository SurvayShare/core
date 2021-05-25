class PurchaseOrderItem < ApplicationRecord
  belongs_to :purchase_order, optional: true
  belongs_to :food
end
