class ShoppingList < ApplicationRecord
    has_many :ingredient_list_items
    has_many :recipes
end
