class ChangeIngredientListsToIngredientListItems < ActiveRecord::Migration[6.1]
  def change
    rename_table :ingredient_lists, :ingredient_list_items
  end
end
