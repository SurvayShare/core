class Receipt < ApplicationRecord
  has_many :receipt_foods
  has_many :foods, through: :receipt_foods

  def create_receipt_foods(new_food)
    new_food.each do |food|
      ReceiptFood.create!(food_id: food.id, receipt_id: id, count: 1, unit: 'gram')
    end
  end
end
