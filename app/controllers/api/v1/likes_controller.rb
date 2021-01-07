class Api::V1::LikesController < ApplicationController

    def create
        if params[:favorite_id]
            favorite = Favorite.find(params[:favorite_id])
            like = Like.new()
            like.favorite_id = favorite.id
            if like.save
                render json: {
                    message: "Favorite liked"
                }
            end
        end
    end

end
