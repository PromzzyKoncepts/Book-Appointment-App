Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index,:show, :create ,:new,:destroy, :update]
      resources :users, only: [:index, :create]
    end
  end
end
