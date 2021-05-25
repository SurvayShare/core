class PurchaseOrder < ApplicationRecord
  has_many :purchase_order_items, dependent: :destroy

  enum status: { processing: 0, processed: 1, delivery: 2 }

  validates :city, :state, :country, presence: true
end
