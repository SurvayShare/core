class Recipe < ApplicationRecord
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
  validates :title, presence: true
  accepts_nested_attributes_for :recipe_foods
  has_rich_text :content

  def create_recipe_foods(new_food)
    new_food.each do |food|
      RecipeFood.create!(food_id: food.id, recipe_id: id, count: 1, unit: 'gram')
    end
  end
end
