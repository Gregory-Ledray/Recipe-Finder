class IngredientList < ApplicationRecord
    validates :checked, presence: true
    validates :quantity, presence: true
    validates :ingredient_id, presence: true
end
