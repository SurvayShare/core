class RemoveNotNullOfContent < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :content, :text, null: true
  end
end
