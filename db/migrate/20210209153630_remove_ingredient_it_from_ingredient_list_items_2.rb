class RemoveIngredientItFromIngredientListItems2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredient_list_items, :ingredient_it, :integer
  end
end