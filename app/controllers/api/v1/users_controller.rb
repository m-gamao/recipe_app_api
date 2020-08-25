class userController < ApplicationController
    def index
        user = User.all
        render json: users
      end
        
      def show
        user = User.find(params[:id])
        render json: user  
      end
             
      def new
        user = User.new
      end
            
      def create
        user = User.all(user_params)
        if user.save
        render json: user, status: :accepted
        else
        render json: {errors: user.errors.full_messages}, status: unprocessible_entity
        end
      end 
    
        
      def edit
        user = User.find_by(params[:id])
      end
        
      def update
        user = User.find_by(params[:id])
      end
        
      private
              
  
    def user_params
        params.fetch(:user, {}).permit(:name, :email, :password, :password_confirmation)
      end
    
    end
end
