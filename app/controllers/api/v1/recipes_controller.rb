class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes
  end
    
  def show
    recipe = Recipe.find(params[:id])
    render json: recipe  
  end
         
  def new
    recipe = Recipe.new
  end
        
  def create
    recipe = Recipe.all(recipe_params)
    if recipe.save
    render json: recipe, status: :accepted
    else
    render json: {errors: recipe.errors.full_messages}, status: unprocessible_entity
    end
  end 

    
  def edit
    recipe = Recipe.find_by(params[:id])
  end
    
  def update
    recipe = Recipe.find_by(params[:id])
  end
    
  private
          
  def recipe_params
    params.require(recipe).permit(:title, :description, :ingredients, :steps, :category_ids)
  end

end
