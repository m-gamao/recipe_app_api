class Api::V1::MealPlansController < ApplicationController
    def index
      meal_plans = meal_plan.all
      render json: meal_plans
    end
      
    def show
      meal_plan = Meal_plan.find(params[:id])
      render json: meal_plan  
    end
           
    def new
      meal_plan = Meal_plan.new
    end
          
    def create
      meal_plan = Meal_plan.all(meal_plan_params)
      if meal_plan.save
      render json: meal_plan, status: :accepted
      else
      render json: {errors: meal_plan.errors.full_messages}, status: unprocessible_entity
      end
    end 
  
      
    def edit
      meal_plan = Meal_plan.find_by(params[:id])
    end
      
    def update
      meal_plan = Meal_plan.find_by(params[:id])
    end
      
    private
            
    def meal_plan_params
      params.require(meal_plan).permit(:day, :recipe, :recipe_ids)
    end
  
  end
  
