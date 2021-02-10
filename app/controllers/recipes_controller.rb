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
        @recipe.ingredient_list_items.build
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.ingredient_list_items.each do |item|
            item.checked = false if item.checked == nil
        end
        begin
            @recipe.save!
            redirect_to @recipe
        rescue Exception => e
            puts e.message
            puts e.backtrace.inspect
            render :new
        end
    end
    
    def edit
        @recipe = Recipe.find(params[:id])
        if @recipe.ingredient_list_items == nil || @recipe.ingredient_list_items.length < 1
            # This should only happen if 'new' was not called when the object was first built.    
            @recipe.ingredient_list_items.build
        end
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        # TODO can I get an easier to work with object out of this map like how 
        # .update must be getting the object from the params?
        begin
            @recipe.update!(recipe_params)
            redirect_to @recipe
        rescue Exception => e
            puts e.message
            puts e.backtrace.inspect
            render :edit
        end
    end
    
    private
        def recipe_params
            params.require(:recipe).permit(:name, :image, :short_description, 
            :instructions, :long_description, :license_status, 
            ingredient_list_items_attributes: [:id, :quantity, :checked, :unit, :ingredient])
        end
end
