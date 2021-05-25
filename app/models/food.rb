class Food < ApplicationRecord
  validates :food_type, presence: true
end
