class ChangeQuantityToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :ingredient_list_items, :quantity, :float
  end
end
