class AddIngredientIdToIngredientLists < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredient_lists, :ingredient_id, :integer
  end
end
