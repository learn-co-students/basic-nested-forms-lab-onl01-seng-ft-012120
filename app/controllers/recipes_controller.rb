class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(params_recipe)
    if @recipe.save
    
      redirect_to @recipe
    else
     
      render 'new'
    end
  end

  private

  def params_recipe
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
  
end
