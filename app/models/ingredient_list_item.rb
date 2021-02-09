class IngredientListItem < ApplicationRecord
    has_one :ingredient
    
    validates :checked, presence: true
    validates :quantity, presence: true
    validates :ingredient_id, presence: true
end
