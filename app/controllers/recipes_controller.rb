class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def show_image
        send_data @recipe.image, :disposition => 'inline'
    end
    
    def new
        @recipe = Recipe.new
        @ingredient_lists = Array.new
        blank_entry = getBlankIngredientListItem()
        @ingredient_lists.push(blank_entry)
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to @recipe
        else
            render :new
        end
    end
    
    def edit
        @recipe = Recipe.find(params[:id])
        @ingredient_lists = Array.new
        blank_entry = getBlankIngredientListItem()
        @ingredient_lists.push(blank_entry)
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render :edit
        end
    end
    
    def getBlankIngredientListItem
        blank_entry = IngredientListItem.new
        blank_entry.checked = false
        blank_entry.quantity = 0
        blank_entry.ingredient_id = 1
        return blank_entry
    end
    
    private
        def recipe_params
            params.require(:recipe).permit(:name, :image, :short_description, 
            :instructions, :long_description, :license_status)
        end
end
