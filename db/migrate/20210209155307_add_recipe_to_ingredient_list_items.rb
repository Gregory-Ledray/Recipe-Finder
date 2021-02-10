class AddRecipeToIngredientListItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredient_list_items, :recipe, index: true
  end
end
