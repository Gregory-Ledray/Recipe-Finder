class RecipeController < ApplicationController
    def index
        @recipeSelected = Recipe.find(params[:id])
    end
end
