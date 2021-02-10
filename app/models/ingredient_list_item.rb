class IngredientListItem < ApplicationRecord
    validates :ingredient, presence: true
    validates :quantity, presence: true
    
    before_save :make_checked_not_nil
    def make_checked_not_nil
        if self.checked == nil
            self.checked = false
        end
    end
end
