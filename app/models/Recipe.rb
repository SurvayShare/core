class Recipe < ApplicationRecord
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
  validates :title, presence: true
  accepts_nested_attributes_for :recipe_foods
  has_rich_text :content
end
