class Recipe < ActiveRecord::Base
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods

  def create_recipe_foods(new_food)
    new_food.each do |food|
      RecipeFood.create!(food_id: food.id, recipe_id: id, count: 1, unit: 'gram')
    end
  end
end
