class IngredientListItem < ApplicationRecord
    has_one :recipe
    has_many :shopping_list
    has_one :user
    
    validates :checked, presence: true
    validates :quantity, presence: true
    validates :ingredient_id, presence: true
end
