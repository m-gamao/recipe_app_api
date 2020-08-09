class Api::V1::CategoriesController < ApplicationController
    def index
      categories = Category.all
      render json: categories
    end

    def show
      category = Category.find(params[:id])
      render json: category
    end

    def new
      category = Category.find(params[:id])
      render json: category
    end

    def create
      category = Category.all(category_params)
      if category.save
        render json: category, status: :accepted
      else
      render json: {errors: category.errors.full_messages}, status: unprocessible_entity
      end
    end 

    def edit
      category = Category.find_by(params[:id])
    end
    
    def update
      category = Category.find_by(params[:id])
    end
    
    private
          
    def category_params
      params.require(category).permit(:name)
    end

end
