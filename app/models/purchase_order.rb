class PurchaseOrder < ApplicationRecord
  has_many :purchase_order_items, dependent: :destroy
  has_many :foods, through: :purchase_order

  enum status: { processing: 0, processed: 1, delivery: 2 }

  validates :city, :state, :country, presence: true
end
