class Api::V1::FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites
  end
        
  def create
    favorite = Favorite.new(favorite_params)
    if  favorite.save
      render json: favorite, status: :accepted
    else
      render json: {errors:  favorite.errors.full_messages}
    end
    
  end 

  def destroy
  end
   
  private
          
  def favorite_params
    params.permit(:recipe_name, :url, :image, :serving_size, :likes)
  end

end
