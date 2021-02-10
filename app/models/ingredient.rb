class Ingredient < ApplicationRecord
    # Ingredients are only used in the ingredient list. But the ingredient list has
    # multiple applications. One is showing ingredients in a recipe; another is a shopping list.
    
    # Usually in Rails you would connect them so that there is a relationship in their
    # models.
    
    # I think a better idea would be to programmatically match ingredients.
    # For instance if you have 3 recipes and one calls for 2 "onions" and another calls for 1 "onion" and another for 1/2 cup "ONION"
    # The system should be smart enough to convert all of those to "Onion" type and to at least
    # Add up measurements which are of the same type. So that would become 3 Onion and 1/2 Cup Onion on the shopping list.
    
    # None of that requires that I have a table for Ingredients. But for now I'm going to keep this table just in case I want it later.
end
