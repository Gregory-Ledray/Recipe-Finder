class CreateRecipesAndIngredientLists < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes_ingredient_lists, id: false do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient_list
    end
  end
end
