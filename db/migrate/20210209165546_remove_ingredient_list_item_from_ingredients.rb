class RemoveIngredientListItemFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :ingredient_list_item_id, :integer
  end
end
