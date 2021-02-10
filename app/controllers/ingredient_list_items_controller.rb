class IngredientListItemsController < ApplicationController
  def index
    @ingredient_list_items = IngredientListItem.all
  end

  def show
    @ingredient_list_item = IngredientListItem.find(params[:id])
  end

  def new
    @ingredient_list_item = IngredientListItem.new
  end

  def create
    @ingredient_list_item = IngredientListItem.new(ingredient_list_item_params)

    if @ingredient_list_item.save
      redirect_to @ingredient_list_item
    else
      render :new
    end
  end
  
  def edit
    @ingredient_list_item = IngredientListItem.find(params[:id])
  end
  
  def update
    @ingredient_list_item = IngredientListItem.find(params[:id])
    
    if @ingredient_list_item.update(ingredient_list_item_params)
      redirect_to @ingredient_list_item
    else
      render :edit
    end
  end

  private
    def ingredient_list_item_params
      params.require(:ingredient_list_item).permit(:checked, :quantity, :unit, :ingredient, :recipe_id)
    end
end
