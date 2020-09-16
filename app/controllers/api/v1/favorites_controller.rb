class Api::V1::FavoritesController < ApplicationController
  def index
    favorites = Favorites.all
    render json: favorites
  end
    
  def show
    favorite = Favorite.find(params[:id])
    render json:  favorite  
  end
         
  def new
    favorite = Favorite.new
  end
        
  def create
    favorite = Favorite.all(favorite_params)
    if  favorite.save
    render json:  favorite, status: :accepted
    else
    render json: {errors:  favorite.errors.full_messages}, status: unprocessible_entity
    end
  end 

    
  def edit
    favorite = Favorite.find_by(params[:id])
  end
    
  def update
    favorite = Favorite.find_by(params[:id])
  end
    
  private
          
  def favorite_params
    params.require(:favorite).permit(:recipe_name, :url, :image)
  end

end
