class IngredientListsController < ApplicationController
  def index
    @ingredient_lists = IngredientList.all
  end

  def show
    @ingredient_list = IngredientList.find(params[:id])
    @ingredient = Ingredient.find(@ingredient_list.ingredient_id) if @ingredient_list.ingredient_id
  end

  def new
    @ingredient_list = IngredientList.new
  end

  def create
    @ingredient_list = IngredientList.new(ingredient_list_params)

    if @ingredient_list.save
      redirect_to @ingredient_list
    else
      render :new
    end
  end
  
  def edit
    @ingredient_list = IngredientList.find(params[:id])
  end
  
  def update
    if params[:commit]
      @ingredient_list = IngredientList.find(params[:id])
      if @ingredient_list.update(ingredient_list_params)
        redirect_to @ingredient_list
      else
        render :edit
      end
    elsif params[:ingredient_list][:ingredients][:name]
      # a search was done
      fixed_name = params[:ingredient_list][:ingredients][:name].titleize
      @ingredient = Ingredient.find_by(name: fixed_name)
      @ingredient_list = IngredientList.find(params[:id])
      render :edit
    else
      render :edit
    end
  end

  private
    def ingredient_list_params
      params.require(:ingredient_list).permit(:checked, :quantity, :ingredient_id)
    end
end
