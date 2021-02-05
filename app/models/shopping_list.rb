class ShoppingList < ApplicationRecord
    has_many :ingredient_lists
    has_many :recipes
end
