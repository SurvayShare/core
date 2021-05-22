class ReceiptFood < ApplicationRecord
  belongs_to :food
  belongs_to :receipt
end
