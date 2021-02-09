class RemoveIngredientIdFromIngredientListItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredient_list_items, :ingredient_id, :integer
  end
end
