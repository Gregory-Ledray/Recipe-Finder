class RemoveIngredientFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :ingredient, :string
  end
end
