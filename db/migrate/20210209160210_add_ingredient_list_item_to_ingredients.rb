class AddIngredientListItemToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredients, :ingredient_list_item, foreign_key: true
  end
end
