class CreateReceiptFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_foods do |t|
      t.references :recipe
      t.references :food
      t.float :count, default: 1
      t.string :unit, default: 'grams'

      t.timestamps
    end
  end
end
