class IngredientList < ApplicationRecord
    has_and_belongs_to_many :recipes
    
    validates :checked, presence: true
    validates :quantity, presence: true
    validates :ingredient_id, presence: true
end
