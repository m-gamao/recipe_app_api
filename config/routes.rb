Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes
      resources :categories  #, only: [:index, :create]
      resources :sessions, only: [:create]
      resources :meal_plans
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
