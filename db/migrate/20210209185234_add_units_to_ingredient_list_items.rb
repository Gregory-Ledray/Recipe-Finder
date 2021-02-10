class AddUnitsToIngredientListItems < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredient_list_items, :unit, :text
    add_column :ingredient_list_items, :ingredient, :text
  end
end
