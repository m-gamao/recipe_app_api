Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      # resources :sessions, only: [:create]
      # http://localhost:3001/api/v1/favorites/:id
      resources :favorites, only: [:create, :index, :destroy] do
        resources :likes, only: [:create]
      end
      resources :servings
      # resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
