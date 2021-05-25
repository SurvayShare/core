class PurchaseOrderItem < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :food
end
