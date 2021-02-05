class CreateIngredientLists < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_lists do |t|
      t.integer :quantity
      t.boolean :checked

      t.timestamps
    end
  end
end
